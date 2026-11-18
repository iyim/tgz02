.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lb/m/h;
.implements Lb/m/v;
.implements Lb/m/e;
.implements Lb/r/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$d;,
        Landroidx/fragment/app/Fragment$e;,
        Landroidx/fragment/app/Fragment$InstantiationException;,
        Landroidx/fragment/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field public static final W:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Landroid/view/ViewGroup;

.field public H:Landroid/view/View;

.field public I:Z

.field public J:Z

.field public K:Landroidx/fragment/app/Fragment$d;

.field public L:Z

.field public M:Z

.field public N:F

.field public O:Landroid/view/LayoutInflater;

.field public P:Z

.field public Q:Landroidx/lifecycle/Lifecycle$State;

.field public R:Lb/m/i;

.field public S:Lb/k/d/i0;

.field public T:Lb/m/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/m/m<",
            "Lb/m/h;",
            ">;"
        }
    .end annotation
.end field

.field public U:Lb/r/b;

.field public V:I

.field public b:I

.field public c:Landroid/os/Bundle;

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/String;

.field public g:Landroid/os/Bundle;

.field public h:Landroidx/fragment/app/Fragment;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/Boolean;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:Lb/k/d/p;

.field public t:Lb/k/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/k/d/m<",
            "*>;"
        }
    .end annotation
.end field

.field public u:Lb/k/d/p;

.field public v:Landroidx/fragment/app/Fragment;

.field public w:I

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->W:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->k:Ljava/lang/Boolean;

    new-instance v0, Lb/k/d/r;

    invoke-direct {v0}, Lb/k/d/r;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    new-instance v0, Landroidx/fragment/app/Fragment$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$a;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->Q:Landroidx/lifecycle/Lifecycle$State;

    new-instance v0, Lb/m/m;

    invoke-direct {v0}, Lb/m/m;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->T:Lb/m/m;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    iput p1, p0, Landroidx/fragment/app/Fragment;->V:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, p1}, Lb/k/d/l;->d(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->k(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    const-string v0, ": calling Fragment constructor caused an exception"

    invoke-static {v1, p1, v0}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    const-string v0, ": could not find Fragment constructor"

    invoke-static {v1, p1, v0}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    invoke-static {v1, p1, v0}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    new-instance p2, Landroidx/fragment/app/Fragment$InstantiationException;

    invoke-static {v1, p1, v0}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public final A()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final A0()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->B:Z

    return v0
.end method

.method public final B0()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->I()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public C()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->g:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->W:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->o()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public C0()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lb/k/d/p;->o:Lb/k/d/m;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    iget-object v1, v1, Lb/k/d/p;->o:Lb/k/d/m;

    .line 1
    iget-object v1, v1, Lb/k/d/m;->d:Landroid/os/Handler;

    .line 2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    iget-object v0, v0, Lb/k/d/p;->o:Lb/k/d/m;

    .line 3
    iget-object v0, v0, Lb/k/d/m;->d:Landroid/os/Handler;

    .line 4
    new-instance v1, Landroidx/fragment/app/Fragment$b;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->e()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()Landroidx/fragment/app/Fragment$d;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$d;->p:Z

    :goto_1
    return-void
.end method

.method public D()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public E()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->k:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->W:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$d;->c:I

    return v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final H()Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lb/k/d/p;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public I()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    return-object v0
.end method

.method public final J()V
    .locals 2

    new-instance v0, Lb/m/i;

    invoke-direct {v0, p0}, Lb/m/i;-><init>(Lb/m/h;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->R:Lb/m/i;

    .line 1
    new-instance v0, Lb/r/b;

    invoke-direct {v0, p0}, Lb/r/b;-><init>(Lb/r/c;)V

    .line 2
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->U:Lb/r/b;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->R:Lb/m/i;

    new-instance v1, Landroidx/fragment/app/Fragment$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Lb/m/i;->a(Lb/m/g;)V

    return-void
.end method

.method public K()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->l:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->m:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->n:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->o:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->p:Z

    iput v0, p0, Landroidx/fragment/app/Fragment;->r:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    new-instance v2, Lb/k/d/r;

    invoke-direct {v2}, Lb/k/d/r;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    iput v0, p0, Landroidx/fragment/app/Fragment;->w:I

    iput v0, p0, Landroidx/fragment/app/Fragment;->x:I

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->y:Ljava/lang/String;

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z

    return-void
.end method

.method public L()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$d;->r:Z

    return v0
.end method

.method public final M()Z
    .locals 1

    iget v0, p0, Landroidx/fragment/app/Fragment;->r:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$d;->p:Z

    return v0
.end method

.method public final O()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->m:Z

    return v0
.end method

.method public final P()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->O()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Q()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lb/k/d/p;->l()Z

    move-result v0

    return v0
.end method

.method public R()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->m()V

    return-void
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public T()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public V()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public W()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public X()V
    .locals 0

    return-void
.end method

.method public Y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public Z()V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget p3, p0, Landroidx/fragment/app/Fragment;->V:I

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0, p1}, Lb/k/d/p;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public a()Landroidx/lifecycle/Lifecycle;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->R:Lb/m/i;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()Landroidx/fragment/app/Fragment$d;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$d;->b:Landroid/animation/Animator;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->F:Z

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lb/k/d/m;->b:Landroid/app/Activity;

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->T()V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->F:Z

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lb/k/d/m;->b:Landroid/app/Activity;

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->d0()V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0, p1}, Lb/k/d/p;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g0()V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0, p1}, Lb/k/d/p;->a(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()Landroidx/fragment/app/Fragment$d;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$d;->a:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment$e;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()Landroidx/fragment/app/Fragment$d;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->q:Landroidx/fragment/app/Fragment$e;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment$d;->p:Z

    if-eqz v1, :cond_3

    iput-object p1, v0, Landroidx/fragment/app/Fragment$d;->q:Landroidx/fragment/app/Fragment$e;

    :cond_3
    if-eqz p1, :cond_4

    check-cast p1, Lb/k/d/p$j;

    .line 7
    iget v0, p1, Lb/k/d/p$j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lb/k/d/p$j;->c:I

    :cond_4
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->y:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->b:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->r:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->o:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->B:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->g:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->H()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->j:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->v()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->v()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->j()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->F()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lb/n/a/a;->a(Lb/m/h;)Lb/n/a/a;

    move-result-object v0

    check-cast v0, Lb/n/a/b;

    .line 1
    iget-object v0, v0, Lb/n/a/b;->b:Lb/n/a/b$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/n/a/b$b;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    :cond_b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    const-string v1, "  "

    invoke-static {p1, v1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/k/d/p;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X()V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0, p1, p2}, Lb/k/d/p;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->U()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0, p1}, Lb/k/d/p;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()Landroidx/fragment/app/Fragment$d;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$d;->d:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->i(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    .line 1
    iget p1, p1, Lb/k/d/p;->n:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {p1}, Lb/k/d/p;->c()V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->q:Z

    new-instance v1, Lb/k/d/i0;

    invoke-direct {v1}, Lb/k/d/i0;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->S:Lb/k/d/i0;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->S:Lb/k/d/i0;

    .line 3
    iget-object p2, p1, Lb/k/d/i0;->b:Lb/m/i;

    if-nez p2, :cond_0

    new-instance p2, Lb/m/i;

    invoke-direct {p2, p1}, Lb/m/i;-><init>(Lb/m/h;)V

    iput-object p2, p1, Lb/k/d/i0;->b:Lb/m/i;

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->T:Lb/m/m;

    iget-object p2, p0, Landroidx/fragment/app/Fragment;->S:Lb/k/d/i0;

    invoke-virtual {p1, p2}, Lb/m/m;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->S:Lb/k/d/i0;

    .line 5
    iget-object p1, p1, Lb/k/d/i0;->b:Lb/m/i;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->S:Lb/k/d/i0;

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->e0()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0, p1}, Lb/k/d/p;->a(Z)V

    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->j0()V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0, p1}, Lb/k/d/p;->b(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->D:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0, p1}, Lb/k/d/p;->b(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lb/r/a;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->U:Lb/r/b;

    .line 1
    iget-object v0, v0, Lb/r/b;->b:Lb/r/a;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()Landroidx/fragment/app/Fragment$d;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    iput p1, v0, Landroidx/fragment/app/Fragment$d;->e:I

    return-void
.end method

.method public c(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->i0()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0, p1}, Lb/k/d/p;->b(Z)V

    return-void
.end method

.method public c0()V
    .locals 0

    return-void
.end method

.method public d()Lb/m/u;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/k/d/p;->D:Lb/k/d/s;

    invoke-virtual {v0, p0}, Lb/k/d/s;->d(Landroidx/fragment/app/Fragment;)Lb/m/u;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()Landroidx/fragment/app/Fragment$d;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$d;->c:I

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public d(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()Landroidx/fragment/app/Fragment$d;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$d;->r:Z

    return-void
.end method

.method public d0()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/fragment/app/Fragment$d;->p:Z

    iget-object v2, v0, Landroidx/fragment/app/Fragment$d;->q:Landroidx/fragment/app/Fragment$e;

    iput-object v1, v0, Landroidx/fragment/app/Fragment$d;->q:Landroidx/fragment/app/Fragment$e;

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    check-cast v1, Lb/k/d/p$j;

    .line 1
    iget v0, v1, Lb/k/d/p$j;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lb/k/d/p$j;->c:I

    iget v0, v1, Lb/k/d/p$j;->c:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lb/k/d/p$j;->b:Lb/k/d/a;

    iget-object v0, v0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->p()V

    :cond_2
    :goto_1
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->m()V

    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    .line 2
    iput-boolean v1, p1, Lb/k/d/p;->v:Z

    iput-boolean v1, p1, Lb/k/d/p;->w:Z

    invoke-virtual {p1, v0}, Lb/k/d/p;->a(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e0()V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Landroidx/fragment/app/Fragment$d;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/fragment/app/Fragment$d;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment$d;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    return-object v0
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->m()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->F:Z

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->U:Lb/r/b;

    invoke-virtual {v1, p1}, Lb/r/b;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->P:Z

    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->R:Lb/m/i;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void

    :cond_0
    new-instance p1, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/LayoutInflater;

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public final g()Lb/k/d/c;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v0, Lb/k/d/m;->b:Landroid/app/Activity;

    .line 2
    check-cast v0, Lb/k/d/c;

    :goto_0
    return-object v0
.end method

.method public g0()V
    .locals 0

    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->U:Lb/r/b;

    .line 1
    iget-object v0, v0, Lb/r/b;->b:Lb/r/a;

    invoke-virtual {v0, p1}, Lb/r/a;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->o()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0, p1}, Lb/k/d/p;->a(Landroid/os/Parcelable;)V

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {p1}, Lb/k/d/p;->c()V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i0()V
    .locals 0

    return-void
.end method

.method public j()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->a:Landroid/view/View;

    return-object v0
.end method

.method public final j(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->o0()V

    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->S:Lb/k/d/i0;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 1
    iget-object p1, p1, Lb/k/d/i0;->b:Lb/m/i;

    invoke-virtual {p1, v0}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_1
    return-void

    .line 2
    :cond_2
    new-instance p1, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j0()V
    .locals 0

    return-void
.end method

.method public k()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->b:Landroid/animation/Animator;

    return-object v0
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->g:Landroid/os/Bundle;

    return-void
.end method

.method public k0()V
    .locals 0

    return-void
.end method

.method public final l()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method public l0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public final m()Lb/k/d/p;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public n()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v0, Lb/k/d/m;->c:Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public n0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public o()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public o0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->z0()Lb/k/d/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->n:Lb/h/c/d;

    return-void
.end method

.method public p0()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    new-instance v2, Landroidx/fragment/app/Fragment$c;

    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$c;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Lb/k/d/p;->a(Lb/k/d/m;Lb/k/d/i;Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    .line 1
    iget-object v0, v0, Lb/k/d/m;->c:Landroid/content/Context;

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public q0()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->d()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->R:Lb/m/i;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->P:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Y()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->o:Lb/h/c/d;

    return-void
.end method

.method public r0()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, Lb/k/d/p;->a(I)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Lb/k/d/i0;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    iget-object v0, v0, Lb/k/d/i0;->b:Lb/m/i;

    invoke-virtual {v0, v2}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 4
    :cond_0
    iput v1, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->a0()V

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lb/n/a/a;->a(Lb/m/h;)Lb/n/a/a;

    move-result-object v1

    check-cast v1, Lb/n/a/b;

    .line 5
    iget-object v1, v1, Lb/n/a/b;->b:Lb/n/a/b$b;

    invoke-virtual {v1}, Lb/n/a/b$b;->c()V

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->q:Z

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lb/k/d/c$a;

    .line 1
    iget-object v0, v0, Lb/k/d/c$a;->f:Lb/k/d/c;

    :goto_0
    return-object v0
.end method

.method public s0()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->b0()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    .line 1
    iget-boolean v1, v0, Lb/k/d/p;->x:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/k/d/p;->d()V

    new-instance v0, Lb/k/d/r;

    invoke-direct {v0}, Lb/k/d/r;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Landroidx/fragment/app/Fragment;->w:I

    return v0
.end method

.method public t0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->e()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/Fragment;->w:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/Fragment;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->y:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Landroid/view/LayoutInflater;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    if-eqz v0, :cond_0

    check-cast v0, Lb/k/d/c$a;

    .line 1
    iget-object v1, v0, Lb/k/d/c$a;->f:Lb/k/d/c;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v0, v0, Lb/k/d/c$a;->f:Lb/k/d/c;

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    .line 3
    iget-object v1, v1, Lb/k/d/p;->f:Lb/k/d/n;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u0()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    const/4 v1, 0x3

    .line 1
    invoke-virtual {v0, v1}, Lb/k/d/p;->a(I)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Lb/k/d/i0;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    iget-object v0, v0, Lb/k/d/i0;->b:Lb/m/i;

    invoke-virtual {v0, v2}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->R:Lb/m/i;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v2}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    iput v1, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h0()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$d;->d:I

    return v0
.end method

.method public v0()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    invoke-virtual {v0, p0}, Lb/k/d/p;->j(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->k:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->a(Z)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    .line 1
    invoke-virtual {v0}, Lb/k/d/p;->r()V

    iget-object v1, v0, Lb/k/d/p;->r:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lb/k/d/p;->f(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public w()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$d;->e:I

    return v0
.end method

.method public w0()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->m()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/k/d/p;->d(Z)Z

    const/4 v0, 0x4

    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l0()V

    iget-boolean v2, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->R:Lb/m/i;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v3}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->S:Lb/k/d/i0;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 1
    iget-object v2, v2, Lb/k/d/i0;->b:Lb/m/i;

    invoke-virtual {v2, v3}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    .line 3
    iput-boolean v1, v2, Lb/k/d/p;->v:Z

    iput-boolean v1, v2, Lb/k/d/p;->w:Z

    invoke-virtual {v2, v0}, Lb/k/d/p;->a(I)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public x0()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->m()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/k/d/p;->d(Z)Z

    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->m0()V

    iget-boolean v2, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->R:Lb/m/i;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v3}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->S:Lb/k/d/i0;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 1
    iget-object v2, v2, Lb/k/d/i0;->b:Lb/m/i;

    invoke-virtual {v2, v3}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    .line 3
    iput-boolean v1, v2, Lb/k/d/p;->v:Z

    iput-boolean v1, v2, Lb/k/d/p;->w:Z

    invoke-virtual {v2, v0}, Lb/k/d/p;->a(I)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y()Lb/k/d/p;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y0()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lb/k/d/p;->w:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lb/k/d/p;->a(I)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Lb/k/d/i0;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    iget-object v0, v0, Lb/k/d/i0;->b:Lb/m/i;

    invoke-virtual {v0, v2}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->R:Lb/m/i;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v2}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    iput v1, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n0()V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->i:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->W:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->q()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final z0()Lb/k/d/c;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g()Lb/k/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to an activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
