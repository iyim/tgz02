.class public abstract Lb/k/d/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/k/d/p$j;,
        Lb/k/d/p$i;,
        Lb/k/d/p$h;,
        Lb/k/d/p$f;,
        Lb/k/d/p$g;,
        Lb/k/d/p$e;
    }
.end annotation


# instance fields
.field public A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/k/d/p$j;",
            ">;"
        }
    .end annotation
.end field

.field public D:Lb/k/d/s;

.field public E:Ljava/lang/Runnable;

.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/k/d/p$h;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Lb/k/d/u;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/k/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lb/k/d/n;

.field public g:Landroidx/activity/OnBackPressedDispatcher;

.field public final h:Lb/a/b;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/k/d/p$g;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/HashSet<",
            "Lb/h/g/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final l:Lb/k/d/c0$a;

.field public final m:Lb/k/d/o;

.field public n:I

.field public o:Lb/k/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/k/d/m<",
            "*>;"
        }
    .end annotation
.end field

.field public p:Lb/k/d/i;

.field public q:Landroidx/fragment/app/Fragment;

.field public r:Landroidx/fragment/app/Fragment;

.field public s:Lb/k/d/l;

.field public t:Lb/k/d/l;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/k/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    new-instance v0, Lb/k/d/u;

    invoke-direct {v0}, Lb/k/d/u;-><init>()V

    iput-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    new-instance v0, Lb/k/d/n;

    invoke-direct {v0, p0}, Lb/k/d/n;-><init>(Lb/k/d/p;)V

    iput-object v0, p0, Lb/k/d/p;->f:Lb/k/d/n;

    new-instance v0, Lb/k/d/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/k/d/p$a;-><init>(Lb/k/d/p;Z)V

    iput-object v0, p0, Lb/k/d/p;->h:Lb/a/b;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lb/k/d/p;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lb/k/d/p;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lb/k/d/p$b;

    invoke-direct {v0, p0}, Lb/k/d/p$b;-><init>(Lb/k/d/p;)V

    iput-object v0, p0, Lb/k/d/p;->l:Lb/k/d/c0$a;

    new-instance v0, Lb/k/d/o;

    invoke-direct {v0, p0}, Lb/k/d/o;-><init>(Lb/k/d/p;)V

    iput-object v0, p0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v0, -0x1

    iput v0, p0, Lb/k/d/p;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/k/d/p;->s:Lb/k/d/l;

    new-instance v0, Lb/k/d/p$c;

    invoke-direct {v0, p0}, Lb/k/d/p$c;-><init>(Lb/k/d/p;)V

    iput-object v0, p0, Lb/k/d/p;->t:Lb/k/d/l;

    new-instance v0, Lb/k/d/p$d;

    invoke-direct {v0, p0}, Lb/k/d/p$d;-><init>(Lb/k/d/p;)V

    iput-object v0, p0, Lb/k/d/p;->E:Ljava/lang/Runnable;

    return-void
.end method

.method public static c(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0, p1}, Lb/k/d/u;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public a()Lb/k/d/v;
    .locals 1

    new-instance v0, Lb/k/d/a;

    invoke-direct {v0, p0}, Lb/k/d/a;-><init>(Lb/k/d/p;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lb/k/d/p;->b:Z

    iget-object v2, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v2, p1}, Lb/k/d/u;->a(I)V

    invoke-virtual {p0, p1, v1}, Lb/k/d/p;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lb/k/d/p;->b:Z

    invoke-virtual {p0, v0}, Lb/k/d/p;->d(Z)Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lb/k/d/p;->b:Z

    throw p1
.end method

.method public a(II)V
    .locals 2

    if-ltz p1, :cond_0

    new-instance v0, Lb/k/d/p$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lb/k/d/p$i;-><init>(Lb/k/d/p;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lb/k/d/p;->a(Lb/k/d/p$h;Z)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lb/k/d/p;->o:Lb/k/d/m;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Lb/k/d/p;->n:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lb/k/d/p;->n:I

    iget-object p1, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {p1}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p2}, Lb/k/d/p;->l(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {p1}, Lb/k/d/u;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_4

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->L:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, p2}, Lb/k/d/p;->l(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lb/k/d/p;->q()V

    iget-boolean p1, p0, Lb/k/d/p;->u:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lb/k/d/p;->o:Lb/k/d/m;

    if-eqz p1, :cond_6

    iget p2, p0, Lb/k/d/p;->n:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    check-cast p1, Lb/k/d/c$a;

    .line 38
    iget-object p1, p1, Lb/k/d/c$a;->f:Lb/k/d/c;

    invoke-virtual {p1}, Lb/k/d/c;->j()V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lb/k/d/p;->u:Z

    :cond_6
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/fragment/app/FragmentManagerState;

    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    .line 86
    iget-object v0, v0, Lb/k/d/u;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 87
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "): "

    const/4 v3, 0x2

    const-string v4, "FragmentManager"

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentState;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lb/k/d/p;->D:Lb/k/d/s;

    iget-object v6, v1, Landroidx/fragment/app/FragmentState;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lb/k/d/s;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v3}, Lb/k/d/p;->c(I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreSaveState: re-attaching retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v6, Lb/k/d/t;

    iget-object v7, p0, Lb/k/d/p;->m:Lb/k/d/o;

    invoke-direct {v6, v7, v5, v1}, Lb/k/d/t;-><init>(Lb/k/d/o;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V

    goto :goto_1

    :cond_4
    new-instance v6, Lb/k/d/t;

    iget-object v5, p0, Lb/k/d/p;->m:Lb/k/d/o;

    iget-object v7, p0, Lb/k/d/p;->o:Lb/k/d/m;

    .line 88
    iget-object v7, v7, Lb/k/d/m;->c:Landroid/content/Context;

    .line 89
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p0}, Lb/k/d/p;->j()Lb/k/d/l;

    move-result-object v8

    invoke-direct {v6, v5, v7, v8, v1}, Lb/k/d/t;-><init>(Lb/k/d/o;Ljava/lang/ClassLoader;Lb/k/d/l;Landroidx/fragment/app/FragmentState;)V

    .line 90
    :goto_1
    iget-object v1, v6, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    .line 91
    iput-object p0, v1, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    invoke-static {v3}, Lb/k/d/p;->c(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "restoreSaveState: active ("

    invoke-static {v3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lb/k/d/p;->o:Lb/k/d/m;

    .line 92
    iget-object v1, v1, Lb/k/d/m;->c:Landroid/content/Context;

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v6, v1}, Lb/k/d/t;->a(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lb/k/d/p;->c:Lb/k/d/u;

    .line 94
    iget-object v1, v1, Lb/k/d/u;->b:Ljava/util/HashMap;

    .line 95
    iget-object v2, v6, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    .line 96
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget v1, p0, Lb/k/d/p;->n:I

    .line 98
    iput v1, v6, Lb/k/d/t;->c:I

    goto/16 :goto_0

    .line 99
    :cond_6
    iget-object v0, p0, Lb/k/d/p;->D:Lb/k/d/s;

    invoke-virtual {v0}, Lb/k/d/s;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    iget-object v5, p0, Lb/k/d/p;->c:Lb/k/d/u;

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lb/k/d/u;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v3}, Lb/k/d/p;->c(I)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding retained Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " that was not found in the set of active Fragments "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;I)V

    iput-boolean v5, v1, Landroidx/fragment/app/Fragment;->m:Z

    const/4 v5, -0x1

    invoke-virtual {p0, v1, v5}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;I)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->c:Ljava/util/ArrayList;

    .line 100
    iget-object v5, v0, Lb/k/d/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lb/k/d/u;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-static {v3}, Lb/k/d/p;->c(I)Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreSaveState: added ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v0, v6}, Lb/k/d/u;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No instantiated fragment for ("

    const-string v1, ")"

    invoke-static {v0, v5, v1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_c
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->d:[Landroidx/fragment/app/BackStackState;

    if-eqz v0, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->d:[Landroidx/fragment/app/BackStackState;

    array-length v6, v5

    if-ge v1, v6, :cond_f

    aget-object v5, v5, v1

    invoke-virtual {v5, p0}, Landroidx/fragment/app/BackStackState;->a(Lb/k/d/p;)Lb/k/d/a;

    move-result-object v5

    invoke-static {v3}, Lb/k/d/p;->c(I)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lb/k/d/a;->t:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lb/h/j/a;

    invoke-direct {v6, v4}, Lb/h/j/a;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v6, "  "

    invoke-virtual {v5, v6, v7, v0}, Lb/k/d/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    :cond_d
    iget-object v6, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    :cond_f
    iget-object v0, p0, Lb/k/d/p;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p1, Landroidx/fragment/app/FragmentManagerState;->e:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p1, Landroidx/fragment/app/FragmentManagerState;->f:Ljava/lang/String;

    if-eqz p1, :cond_10

    .line 102
    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0, p1}, Lb/k/d/u;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 103
    iput-object p1, p0, Lb/k/d/p;->r:Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Lb/k/d/p;->r:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Lb/k/d/p;->f(Landroidx/fragment/app/Fragment;)V

    :cond_10
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 2

    iget v0, p0, Lb/k/d/p;->n:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lb/k/d/p;->k(Landroidx/fragment/app/Fragment;)V

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->A:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0, p1}, Lb/k/d/u;->a(Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->m:Z

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-nez v1, :cond_1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->M:Z

    :cond_1
    invoke-virtual {p0, p1}, Lb/k/d/p;->i(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/k/d/p;->u:Z

    :cond_2
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lb/k/d/p;->c:Lb/k/d/u;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    .line 40
    iget-object v1, v1, Lb/k/d/u;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/d/t;

    const/4 v8, 0x1

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lb/k/d/t;

    iget-object v2, v0, Lb/k/d/p;->m:Lb/k/d/o;

    invoke-direct {v1, v2, v7}, Lb/k/d/t;-><init>(Lb/k/d/o;Landroidx/fragment/app/Fragment;)V

    .line 42
    iput v8, v1, Lb/k/d/t;->c:I

    :cond_0
    move-object v9, v1

    .line 43
    iget v1, v9, Lb/k/d/t;->c:I

    iget-object v2, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->n:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v3, :cond_1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    if-ge v1, v4, :cond_2

    iget v2, v2, Landroidx/fragment/app/Fragment;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_3
    :goto_0
    iget-object v2, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v2, :cond_4

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    iget-object v2, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->m:Z

    const/4 v5, -0x1

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->M()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_6
    :goto_1
    iget-object v2, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->I:Z

    const/4 v6, 0x3

    if-eqz v3, :cond_7

    iget v2, v2, Landroidx/fragment/app/Fragment;->b:I

    if-ge v2, v6, :cond_7

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    iget-object v2, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->Q:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v4, :cond_9

    if-eq v2, v6, :cond_8

    if-eq v2, v3, :cond_a

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_8
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_9
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_a
    :goto_2
    move v2, v1

    move/from16 v1, p2

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v1, v7, Landroidx/fragment/app/Fragment;->b:I

    const-string v11, "FragmentManager"

    const/4 v2, 0x0

    const/4 v12, 0x0

    if-gt v1, v10, :cond_2e

    if-ge v1, v10, :cond_b

    iget-object v1, v0, Lb/k/d/p;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual/range {p0 .. p1}, Lb/k/d/p;->c(Landroidx/fragment/app/Fragment;)V

    :cond_b
    iget v1, v7, Landroidx/fragment/app/Fragment;->b:I

    if-eq v1, v5, :cond_c

    if-eqz v1, :cond_14

    if-eq v1, v8, :cond_17

    if-eq v1, v4, :cond_2a

    if-eq v1, v6, :cond_2c

    goto/16 :goto_17

    :cond_c
    if-le v10, v5, :cond_14

    invoke-static {v6}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto ATTACHED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    const-string v3, " that does not belong to this FragmentManager!"

    const-string v4, " declared target fragment "

    const-string v13, "Fragment "

    if-eqz v1, :cond_10

    iget-object v14, v1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lb/k/d/p;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    iget v14, v1, Landroidx/fragment/app/Fragment;->b:I

    if-ge v14, v8, :cond_e

    invoke-virtual {v0, v1, v8}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;I)V

    :cond_e
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    iput-object v1, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    iput-object v2, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    goto :goto_3

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_3
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 45
    iget-object v14, v0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v14, v1}, Lb/k/d/u;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 46
    iget v3, v1, Landroidx/fragment/app/Fragment;->b:I

    if-ge v3, v8, :cond_12

    invoke-virtual {v0, v1, v8}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;I)V

    goto :goto_4

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_4
    iget-object v1, v0, Lb/k/d/p;->o:Lb/k/d/m;

    iget-object v3, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    .line 47
    iget-object v4, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iput-object v1, v4, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    iput-object v3, v4, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/Fragment;

    iput-object v0, v4, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    iget-object v3, v9, Lb/k/d/t;->a:Lb/k/d/o;

    .line 48
    iget-object v13, v1, Lb/k/d/m;->c:Landroid/content/Context;

    .line 49
    invoke-virtual {v3, v4, v13, v12}, Lb/k/d/o;->b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->p0()V

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/Fragment;

    if-nez v4, :cond_13

    move-object v3, v1

    check-cast v3, Lb/k/d/c$a;

    .line 50
    iget-object v3, v3, Lb/k/d/c$a;->f:Lb/k/d/c;

    invoke-virtual {v3}, Lb/k/d/c;->h()V

    goto :goto_5

    .line 51
    :cond_13
    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->a(Landroidx/fragment/app/Fragment;)V

    :goto_5
    iget-object v3, v9, Lb/k/d/t;->a:Lb/k/d/o;

    iget-object v4, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    .line 52
    iget-object v1, v1, Lb/k/d/m;->c:Landroid/content/Context;

    .line 53
    invoke-virtual {v3, v4, v1, v12}, Lb/k/d/o;->a(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    :cond_14
    if-lez v10, :cond_17

    .line 54
    invoke-static {v6}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "moveto CREATED: "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_15
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v3, v1, Landroidx/fragment/app/Fragment;->P:Z

    if-nez v3, :cond_16

    iget-object v3, v9, Lb/k/d/t;->a:Lb/k/d/o;

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v4, v12}, Lb/k/d/o;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->f(Landroid/os/Bundle;)V

    iget-object v1, v9, Lb/k/d/t;->a:Lb/k/d/o;

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4, v12}, Lb/k/d/o;->b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_6

    :cond_16
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->i(Landroid/os/Bundle;)V

    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iput v8, v1, Landroidx/fragment/app/Fragment;->b:I

    :cond_17
    :goto_6
    const/16 v1, 0x8

    const-string v3, "moveto CREATE_VIEW: "

    if-le v10, v5, :cond_1a

    .line 55
    iget-object v4, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->n:Z

    if-eqz v13, :cond_1a

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v13, :cond_1a

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->q:Z

    if-nez v4, :cond_1a

    invoke-static {v6}, Lb/k/d/p;->c(I)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static {v3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v13, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v4, v13, v11}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_18
    iget-object v4, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v13, v4, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v4, v13}, Landroidx/fragment/app/Fragment;->g(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v13

    iget-object v14, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v4, v13, v2, v14}, Landroidx/fragment/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v4, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v4, :cond_1a

    invoke-virtual {v4, v12}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v4, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v13, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    sget v14, Lb/k/b;->fragment_container_view_tag:I

    invoke-virtual {v13, v14, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v4, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v13, :cond_19

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-object v4, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v13, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v14, v4, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v4, v13, v14}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v4, v9, Lb/k/d/t;->a:Lb/k/d/o;

    iget-object v13, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v14, v13, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v15, v13, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v4, v13, v14, v15, v12}, Lb/k/d/o;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_1a
    if-le v10, v8, :cond_29

    .line 56
    iget-object v4, v0, Lb/k/d/p;->p:Lb/k/d/i;

    .line 57
    iget-object v13, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v13, v13, Landroidx/fragment/app/Fragment;->n:Z

    if-eqz v13, :cond_1b

    goto/16 :goto_b

    :cond_1b
    invoke-static {v6}, Lb/k/d/p;->c(I)Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-static {v3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v13, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v3, v13, v11}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_1c
    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v13, v3, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v13, :cond_1d

    goto :goto_9

    :cond_1d
    iget v3, v3, Landroidx/fragment/app/Fragment;->x:I

    if-eqz v3, :cond_21

    if-eq v3, v5, :cond_20

    invoke-virtual {v4, v3}, Lb/k/d/i;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_1f

    iget-object v4, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->p:Z

    if-eqz v5, :cond_1e

    goto :goto_8

    :cond_1e
    :try_start_0
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->A()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    const-string v1, "unknown"

    :goto_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No view found for id 0x"

    invoke-static {v3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for fragment "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1f
    :goto_8
    move-object v13, v3

    goto :goto_9

    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create fragment "

    invoke-static {v2}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for a container view with no id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    move-object v13, v2

    :goto_9
    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iput-object v13, v3, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->g(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v13, v5}, Landroidx/fragment/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v3, :cond_25

    invoke-virtual {v3, v12}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    sget v5, Lb/k/b;->fragment_container_view_tag:I

    invoke-virtual {v4, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v13, :cond_22

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_22
    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v4, :cond_23

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-static {v1}, Lb/h/k/q;->F(Landroid/view/View;)V

    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v1, v9, Lb/k/d/t;->a:Lb/k/d/o;

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v5, v3, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4, v5, v12}, Lb/k/d/o;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v3, :cond_24

    goto :goto_a

    :cond_24
    move v8, v12

    :goto_a
    iput-boolean v8, v1, Landroidx/fragment/app/Fragment;->L:Z

    .line 58
    :cond_25
    :goto_b
    invoke-static {v6}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_26
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->e(Landroid/os/Bundle;)V

    iget-object v1, v9, Lb/k/d/t;->a:Lb/k/d/o;

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4, v12}, Lb/k/d/o;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 59
    invoke-static {v6}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_27
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v3, :cond_28

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->j(Landroid/os/Bundle;)V

    :cond_28
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    :cond_29
    const/4 v4, 0x2

    :cond_2a
    if-le v10, v4, :cond_2c

    .line 60
    invoke-static {v6}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "moveto STARTED: "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_2b
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->x0()V

    iget-object v1, v9, Lb/k/d/t;->a:Lb/k/d/o;

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3, v12}, Lb/k/d/o;->e(Landroidx/fragment/app/Fragment;Z)V

    :cond_2c
    if-le v10, v6, :cond_52

    .line 61
    invoke-static {v6}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "moveto RESUMED: "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_2d
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->w0()V

    iget-object v1, v9, Lb/k/d/t;->a:Lb/k/d/o;

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3, v12}, Lb/k/d/o;->d(Landroidx/fragment/app/Fragment;Z)V

    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    goto/16 :goto_17

    :cond_2e
    if-le v1, v10, :cond_52

    if-eqz v1, :cond_4d

    if-eq v1, v8, :cond_3c

    const/4 v4, 0x2

    if-eq v1, v4, :cond_34

    if-eq v1, v6, :cond_31

    if-eq v1, v3, :cond_2f

    goto/16 :goto_17

    :cond_2f
    if-ge v10, v3, :cond_31

    .line 62
    invoke-static {v6}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "movefrom RESUMED: "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_30
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->u0()V

    iget-object v1, v9, Lb/k/d/t;->a:Lb/k/d/o;

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3, v12}, Lb/k/d/o;->c(Landroidx/fragment/app/Fragment;Z)V

    :cond_31
    if-ge v10, v6, :cond_33

    .line 63
    invoke-static {v6}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "movefrom STARTED: "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_32
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->y0()V

    iget-object v1, v9, Lb/k/d/t;->a:Lb/k/d/o;

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3, v12}, Lb/k/d/o;->f(Landroidx/fragment/app/Fragment;Z)V

    :cond_33
    const/4 v4, 0x2

    :cond_34
    if-ge v10, v4, :cond_3c

    .line 64
    invoke-static {v6}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v1, :cond_36

    iget-object v1, v0, Lb/k/d/p;->o:Lb/k/d/m;

    check-cast v1, Lb/k/d/c$a;

    .line 65
    iget-object v1, v1, Lb/k/d/c$a;->f:Lb/k/d/c;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_36

    .line 66
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-nez v1, :cond_36

    invoke-virtual {v9}, Lb/k/d/t;->a()V

    :cond_36
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v1, :cond_3a

    iget-object v3, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3a

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->P()Z

    move-result v1

    if-nez v1, :cond_3a

    iget v1, v0, Lb/k/d/p;->n:I

    const/4 v3, 0x0

    if-le v1, v5, :cond_37

    iget-boolean v1, v0, Lb/k/d/p;->x:Z

    if-nez v1, :cond_37

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_37

    iget v1, v7, Landroidx/fragment/app/Fragment;->N:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_37

    iget-object v1, v0, Lb/k/d/p;->o:Lb/k/d/m;

    .line 67
    iget-object v1, v1, Lb/k/d/m;->c:Landroid/content/Context;

    .line 68
    iget-object v2, v0, Lb/k/d/p;->p:Lb/k/d/i;

    invoke-static {v1, v2, v7, v12}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;Lb/k/d/i;Landroidx/fragment/app/Fragment;Z)Lb/k/d/g;

    move-result-object v2

    :cond_37
    iput v3, v7, Landroidx/fragment/app/Fragment;->N:F

    iget-object v13, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    iget-object v14, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v2, :cond_39

    invoke-virtual {v7, v10}, Landroidx/fragment/app/Fragment;->d(I)V

    iget-object v1, v0, Lb/k/d/p;->l:Lb/k/d/c0$a;

    .line 69
    iget-object v3, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v4, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v6, Lb/h/g/a;

    invoke-direct {v6}, Lb/h/g/a;-><init>()V

    new-instance v5, Lb/k/d/d;

    invoke-direct {v5, v7}, Lb/k/d/d;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v5}, Lb/h/g/a;->a(Lb/h/g/a$a;)V

    move-object v5, v1

    check-cast v5, Lb/k/d/p$b;

    invoke-virtual {v5, v7, v6}, Lb/k/d/p$b;->b(Landroidx/fragment/app/Fragment;Lb/h/g/a;)V

    iget-object v1, v2, Lb/k/d/g;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_38

    new-instance v2, Lb/k/d/h;

    invoke-direct {v2, v1, v4, v3}, Lb/k/d/h;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;)V

    new-instance v1, Lb/k/d/e;

    invoke-direct {v1, v4, v7, v5, v6}, Lb/k/d/e;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Lb/k/d/c0$a;Lb/h/g/a;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v12, 0x0

    goto :goto_c

    :cond_38
    iget-object v12, v2, Lb/k/d/g;->b:Landroid/animation/Animator;

    invoke-virtual {v7, v12}, Landroidx/fragment/app/Fragment;->a(Landroid/animation/Animator;)V

    new-instance v15, Lb/k/d/f;

    const/16 v16, 0x0

    move-object v1, v15

    move-object v2, v4

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lb/k/d/f;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Lb/k/d/c0$a;Lb/h/g/a;)V

    invoke-virtual {v12, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v12, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroid/animation/Animator;->start()V

    move/from16 v12, v16

    .line 70
    :cond_39
    :goto_c
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eq v13, v1, :cond_3a

    return-void

    :cond_3a
    iget-object v1, v0, Lb/k/d/p;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3b

    invoke-virtual/range {p0 .. p1}, Lb/k/d/p;->d(Landroidx/fragment/app/Fragment;)V

    goto :goto_d

    :cond_3b
    invoke-virtual {v7, v10}, Landroidx/fragment/app/Fragment;->d(I)V

    :cond_3c
    :goto_d
    if-ge v10, v8, :cond_4d

    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v1, :cond_3d

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->M()Z

    move-result v1

    if-nez v1, :cond_3d

    move v1, v8

    goto :goto_e

    :cond_3d
    move v1, v12

    :goto_e
    if-nez v1, :cond_3f

    iget-object v1, v0, Lb/k/d/p;->D:Lb/k/d/s;

    invoke-virtual {v1, v7}, Lb/k/d/s;->f(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_3e

    goto :goto_f

    :cond_3e
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 71
    iget-object v2, v0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v2, v1}, Lb/k/d/u;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 72
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->B()Z

    move-result v2

    if-eqz v2, :cond_42

    iput-object v1, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    goto :goto_10

    .line 73
    :cond_3f
    :goto_f
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    .line 74
    iget-object v2, v0, Lb/k/d/p;->c:Lb/k/d/u;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lb/k/d/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_10

    :cond_40
    const/4 v2, 0x2

    invoke-static {v2}, Lb/k/d/p;->c(I)Z

    move-result v2

    if-eqz v2, :cond_41

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed fragment from active set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    iget-object v2, v0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v2, v9}, Lb/k/d/u;->a(Lb/k/d/t;)V

    invoke-virtual {v0, v1}, Lb/k/d/p;->n(Landroidx/fragment/app/Fragment;)V

    .line 75
    :cond_42
    :goto_10
    iget-object v1, v0, Lb/k/d/p;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v7, v10}, Landroidx/fragment/app/Fragment;->d(I)V

    move v10, v8

    goto/16 :goto_15

    :cond_43
    iget-object v1, v0, Lb/k/d/p;->o:Lb/k/d/m;

    iget-object v2, v0, Lb/k/d/p;->D:Lb/k/d/s;

    const/4 v3, 0x3

    .line 76
    invoke-static {v3}, Lb/k/d/p;->c(I)Z

    move-result v3

    if-eqz v3, :cond_44

    const-string v3, "movefrom CREATED: "

    invoke-static {v3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v3, v4, v11}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_44
    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v4, :cond_45

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->M()Z

    move-result v3

    if-nez v3, :cond_45

    move v3, v8

    goto :goto_11

    :cond_45
    move v3, v12

    :goto_11
    if-nez v3, :cond_47

    iget-object v4, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v4}, Lb/k/d/s;->f(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_46

    goto :goto_12

    :cond_46
    move v4, v12

    goto :goto_13

    :cond_47
    :goto_12
    move v4, v8

    :goto_13
    if-eqz v4, :cond_4c

    instance-of v4, v1, Lb/m/v;

    if-eqz v4, :cond_48

    invoke-virtual {v2}, Lb/k/d/s;->d()Z

    move-result v1

    goto :goto_14

    .line 77
    :cond_48
    iget-object v1, v1, Lb/k/d/m;->c:Landroid/content/Context;

    .line 78
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_49

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v1, v8

    goto :goto_14

    :cond_49
    move v1, v8

    :goto_14
    if-nez v3, :cond_4a

    if-eqz v1, :cond_4b

    :cond_4a
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v1}, Lb/k/d/s;->b(Landroidx/fragment/app/Fragment;)V

    :cond_4b
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->q0()V

    iget-object v1, v9, Lb/k/d/t;->a:Lb/k/d/o;

    iget-object v2, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2, v12}, Lb/k/d/o;->a(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_15

    :cond_4c
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    iput v12, v1, Landroidx/fragment/app/Fragment;->b:I

    :cond_4d
    :goto_15
    if-gez v10, :cond_52

    .line 79
    iget-object v1, v0, Lb/k/d/p;->D:Lb/k/d/s;

    const/4 v2, 0x3

    .line 80
    invoke-static {v2}, Lb/k/d/p;->c(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string v2, "movefrom ATTACHED: "

    invoke-static {v2}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v2, v3, v11}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_4e
    iget-object v2, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->s0()V

    iget-object v2, v9, Lb/k/d/t;->a:Lb/k/d/o;

    iget-object v3, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3, v12}, Lb/k/d/o;->b(Landroidx/fragment/app/Fragment;Z)V

    iget-object v2, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    const/4 v3, -0x1

    iput v3, v2, Landroidx/fragment/app/Fragment;->b:I

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/Fragment;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v3, :cond_4f

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->M()Z

    move-result v2

    if-nez v2, :cond_4f

    goto :goto_16

    :cond_4f
    move v8, v12

    :goto_16
    if-nez v8, :cond_50

    iget-object v2, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Lb/k/d/s;->f(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_52

    :cond_50
    const/4 v1, 0x3

    invoke-static {v1}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_51

    const-string v1, "initState called for fragment: "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v2, v11}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_51
    iget-object v1, v9, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->K()V

    .line 81
    :cond_52
    :goto_17
    iget v1, v7, Landroidx/fragment/app/Fragment;->b:I

    if-eq v1, v10, :cond_54

    const/4 v1, 0x3

    invoke-static {v1}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_53

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToState: Fragment state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Landroidx/fragment/app/Fragment;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    iput v10, v7, Landroidx/fragment/app/Fragment;->b:I

    :cond_54
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lb/k/d/p;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->Q:Landroidx/lifecycle/Lifecycle$State;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lb/k/d/p;->g(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lb/k/d/j;

    if-eqz v0, :cond_0

    check-cast p1, Lb/k/d/j;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lb/k/d/j;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lb/e/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/c<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lb/k/d/p;->n:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v1}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    iget v3, v2, Landroidx/fragment/app/Fragment;->b:I

    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v2, v0}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;I)V

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lb/e/c;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lb/k/d/a;ZZZ)V
    .locals 8

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Lb/k/d/a;->c(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lb/k/d/a;->b()V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v6, p0, Lb/k/d/p;->l:Lb/k/d/c0$a;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lb/k/d/c0;->a(Lb/k/d/p;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLb/k/d/c0$a;)V

    :cond_1
    if-eqz p4, :cond_2

    iget p2, p0, Lb/k/d/p;->n:I

    invoke-virtual {p0, p2, v7}, Lb/k/d/p;->a(IZ)V

    :cond_2
    iget-object p2, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {p2}, Lb/k/d/u;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_3

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p3, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/fragment/app/Fragment;->x:I

    invoke-virtual {p1, v0}, Lb/k/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/fragment/app/Fragment;->N:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    iget-object v2, p3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p4, :cond_5

    iput v1, p3, Landroidx/fragment/app/Fragment;->N:F

    goto :goto_1

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p3, Landroidx/fragment/app/Fragment;->N:F

    const/4 v0, 0x0

    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->L:Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public a(Lb/k/d/m;Lb/k/d/i;Landroidx/fragment/app/Fragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/d/m<",
            "*>;",
            "Lb/k/d/i;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lb/k/d/p;->o:Lb/k/d/m;

    if-nez v0, :cond_9

    iput-object p1, p0, Lb/k/d/p;->o:Lb/k/d/m;

    iput-object p2, p0, Lb/k/d/p;->p:Lb/k/d/i;

    iput-object p3, p0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lb/k/d/p;->r()V

    :cond_0
    instance-of p2, p1, Lb/a/c;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lb/a/c;

    invoke-interface {p2}, Lb/a/c;->b()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Lb/k/d/p;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_1

    move-object p2, p3

    :cond_1
    iget-object v0, p0, Lb/k/d/p;->g:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Lb/k/d/p;->h:Lb/a/b;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Lb/m/h;Lb/a/b;)V

    :cond_2
    if-eqz p3, :cond_3

    iget-object p1, p3, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    .line 1
    iget-object p1, p1, Lb/k/d/p;->D:Lb/k/d/s;

    invoke-virtual {p1, p3}, Lb/k/d/s;->c(Landroidx/fragment/app/Fragment;)Lb/k/d/s;

    move-result-object p1

    goto :goto_2

    .line 2
    :cond_3
    instance-of p2, p1, Lb/m/v;

    if-eqz p2, :cond_8

    check-cast p1, Lb/m/v;

    invoke-interface {p1}, Lb/m/v;->d()Lb/m/u;

    move-result-object p1

    .line 3
    sget-object p2, Lb/k/d/s;->h:Lb/m/r;

    const-class p3, Lb/k/d/s;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-static {v1, v0}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lb/m/u;->a(Ljava/lang/String;)Lb/m/q;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of p1, p2, Lb/m/t;

    if-eqz p1, :cond_6

    check-cast p2, Lb/m/t;

    invoke-virtual {p2}, Lb/m/t;->a()V

    goto :goto_1

    :cond_4
    instance-of v1, p2, Lb/m/s;

    if-eqz v1, :cond_5

    check-cast p2, Lb/m/s;

    invoke-virtual {p2, v0, p3}, Lb/m/s;->a(Ljava/lang/String;Ljava/lang/Class;)Lb/m/q;

    move-result-object p2

    goto :goto_0

    :cond_5
    invoke-interface {p2, p3}, Lb/m/r;->a(Ljava/lang/Class;)Lb/m/q;

    move-result-object p2

    :goto_0
    move-object v1, p2

    .line 6
    iget-object p1, p1, Lb/m/u;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/m/q;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lb/m/q;->b()V

    .line 7
    :cond_6
    :goto_1
    check-cast v1, Lb/k/d/s;

    .line 8
    iput-object v1, p0, Lb/k/d/p;->D:Lb/k/d/s;

    goto :goto_3

    .line 9
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_8
    new-instance p1, Lb/k/d/s;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lb/k/d/s;-><init>(Z)V

    :goto_2
    iput-object p1, p0, Lb/k/d/p;->D:Lb/k/d/s;

    :goto_3
    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/k/d/p$h;Z)V
    .locals 2

    if-nez p2, :cond_3

    iget-object v0, p0, Lb/k/d/p;->o:Lb/k/d/m;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lb/k/d/p;->x:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lb/k/d/p;->l()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/k/d/p;->o:Lb/k/d/m;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p2, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lb/k/d/p;->p()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lb/k/d/p$i;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lb/k/d/p$i;-><init>(Lb/k/d/p;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lb/k/d/p;->a(Lb/k/d/p$h;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "    "

    invoke-static {p1, v0}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v1, p1, p2, p3, p4}, Lb/k/d/u;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Lb/k/d/p;->e:Ljava/util/ArrayList;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lb/k/d/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_1
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/k/d/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/k/d/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, v0, p3, v3}, Lb/k/d/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/k/d/p;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    if-ge p4, v0, :cond_2

    iget-object v1, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/d/p$h;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lb/k/d/p;->o:Lb/k/d/m;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lb/k/d/p;->p:Lb/k/d/i;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lb/k/d/p;->n:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lb/k/d/p;->v:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lb/k/d/p;->w:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lb/k/d/p;->x:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Lb/k/d/p;->u:Z

    if-eqz p2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lb/k/d/p;->u:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/k/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/k/d/p;->C:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_6

    iget-object v3, p0, Lb/k/d/p;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/k/d/p$j;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    iget-boolean v6, v3, Lb/k/d/p$j;->a:Z

    if-nez v6, :cond_1

    iget-object v6, v3, Lb/k/d/p$j;->b:Lb/k/d/a;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Lb/k/d/p;->C:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 34
    :cond_1
    iget v6, v3, Lb/k/d/p$j;->c:I

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    if-nez v6, :cond_3

    if-eqz p1, :cond_5

    .line 35
    iget-object v6, v3, Lb/k/d/p$j;->b:Lb/k/d/a;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Lb/k/d/a;->a(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    iget-object v6, p0, Lb/k/d/p;->C:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    if-eqz p1, :cond_4

    iget-boolean v6, v3, Lb/k/d/p$j;->a:Z

    if-nez v6, :cond_4

    iget-object v6, v3, Lb/k/d/p$j;->b:Lb/k/d/a;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 36
    :goto_3
    iget-object v5, v3, Lb/k/d/p$j;->b:Lb/k/d/a;

    iget-object v6, v5, Lb/k/d/a;->r:Lb/k/d/p;

    iget-boolean v3, v3, Lb/k/d/p$j;->a:Z

    invoke-virtual {v6, v5, v3, v1, v1}, Lb/k/d/p;->a(Lb/k/d/a;ZZZ)V

    goto :goto_4

    .line 37
    :cond_4
    invoke-virtual {v3}, Lb/k/d/p$j;->a()V

    :cond_5
    :goto_4
    add-int/2addr v0, v4

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/k/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/d/a;

    iget-boolean v12, v0, Lb/k/d/v;->p:Z

    iget-object v0, v7, Lb/k/d/p;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lb/k/d/p;->B:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v0, v7, Lb/k/d/p;->B:Ljava/util/ArrayList;

    iget-object v1, v7, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v1}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    iget-object v0, v7, Lb/k/d/p;->r:Landroidx/fragment/app/Fragment;

    move-object v1, v0

    move v0, v10

    const/4 v14, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v0, v11, :cond_13

    .line 16
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/k/d/a;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_d

    iget-object v3, v7, Lb/k/d/p;->B:Ljava/util/ArrayList;

    move-object v15, v1

    const/4 v1, 0x0

    .line 17
    :goto_2
    iget-object v13, v2, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_c

    iget-object v13, v2, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lb/k/d/v$a;

    iget v6, v13, Lb/k/d/v$a;->a:I

    if-eq v6, v5, :cond_b

    const/4 v5, 0x2

    const/16 v10, 0x9

    if-eq v6, v5, :cond_5

    if-eq v6, v4, :cond_3

    const/4 v5, 0x6

    if-eq v6, v5, :cond_3

    const/4 v5, 0x7

    if-eq v6, v5, :cond_2

    const/16 v5, 0x8

    if-eq v6, v5, :cond_1

    goto :goto_3

    :cond_1
    iget-object v5, v2, Lb/k/d/v;->a:Ljava/util/ArrayList;

    new-instance v6, Lb/k/d/v$a;

    invoke-direct {v6, v10, v15}, Lb/k/d/v$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    iget-object v15, v13, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_3

    :cond_2
    const/4 v6, 0x1

    goto/16 :goto_8

    :cond_3
    iget-object v5, v13, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v13, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    if-ne v5, v15, :cond_4

    iget-object v6, v2, Lb/k/d/v;->a:Ljava/util/ArrayList;

    new-instance v13, Lb/k/d/v$a;

    invoke-direct {v13, v10, v5}, Lb/k/d/v$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v1, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v15, 0x0

    :cond_4
    :goto_3
    const/4 v6, 0x1

    const/16 v16, -0x1

    goto/16 :goto_9

    :cond_5
    iget-object v5, v13, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    iget v6, v5, Landroidx/fragment/app/Fragment;->x:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v16, -0x1

    add-int/lit8 v18, v18, -0x1

    move v4, v1

    move-object v10, v15

    move/from16 v1, v18

    const/4 v15, 0x0

    :goto_4
    if-ltz v1, :cond_9

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v9, v19

    check-cast v9, Landroidx/fragment/app/Fragment;

    iget v8, v9, Landroidx/fragment/app/Fragment;->x:I

    if-ne v8, v6, :cond_8

    if-ne v9, v5, :cond_6

    move/from16 v19, v6

    const/4 v15, 0x1

    goto :goto_6

    :cond_6
    if-ne v9, v10, :cond_7

    iget-object v8, v2, Lb/k/d/v;->a:Ljava/util/ArrayList;

    new-instance v10, Lb/k/d/v$a;

    move/from16 v19, v6

    const/16 v6, 0x9

    invoke-direct {v10, v6, v9}, Lb/k/d/v$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v8, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    move/from16 v19, v6

    const/16 v6, 0x9

    :goto_5
    new-instance v8, Lb/k/d/v$a;

    const/4 v6, 0x3

    invoke-direct {v8, v6, v9}, Lb/k/d/v$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    iget v6, v13, Lb/k/d/v$a;->c:I

    iput v6, v8, Lb/k/d/v$a;->c:I

    iget v6, v13, Lb/k/d/v$a;->e:I

    iput v6, v8, Lb/k/d/v$a;->e:I

    iget v6, v13, Lb/k/d/v$a;->d:I

    iput v6, v8, Lb/k/d/v$a;->d:I

    iget v6, v13, Lb/k/d/v$a;->f:I

    iput v6, v8, Lb/k/d/v$a;->f:I

    iget-object v6, v2, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_6

    :cond_8
    move/from16 v19, v6

    :goto_6
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v6, v19

    goto :goto_4

    :cond_9
    if-eqz v15, :cond_a

    iget-object v1, v2, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    const/4 v6, 0x1

    iput v6, v13, Lb/k/d/v$a;->a:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    :goto_7
    move-object v15, v10

    goto :goto_9

    :cond_b
    move v6, v5

    :goto_8
    const/16 v16, -0x1

    iget-object v4, v13, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/2addr v1, v6

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move v5, v6

    const/4 v4, 0x3

    goto/16 :goto_2

    :cond_c
    move v6, v5

    move-object v1, v15

    goto :goto_c

    :cond_d
    move v6, v5

    .line 18
    iget-object v3, v7, Lb/k/d/p;->B:Ljava/util/ArrayList;

    .line 19
    iget-object v4, v2, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    :goto_a
    if-ltz v4, :cond_10

    iget-object v5, v2, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/k/d/v$a;

    iget v8, v5, Lb/k/d/v$a;->a:I

    const/4 v9, 0x3

    if-eq v8, v6, :cond_f

    if-eq v8, v9, :cond_e

    packed-switch v8, :pswitch_data_0

    goto :goto_b

    :pswitch_0
    iget-object v8, v5, Lb/k/d/v$a;->g:Landroidx/lifecycle/Lifecycle$State;

    iput-object v8, v5, Lb/k/d/v$a;->h:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_b

    :pswitch_1
    iget-object v1, v5, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_b

    :pswitch_2
    const/4 v1, 0x0

    goto :goto_b

    :cond_e
    :pswitch_3
    iget-object v5, v5, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    :pswitch_4
    iget-object v5, v5, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_10
    :goto_c
    if-nez v14, :cond_12

    .line 20
    iget-boolean v2, v2, Lb/k/d/v;->g:Z

    if-eqz v2, :cond_11

    goto :goto_d

    :cond_11
    const/4 v14, 0x0

    goto :goto_e

    :cond_12
    :goto_d
    move v14, v6

    :goto_e
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    goto/16 :goto_1

    :cond_13
    move v6, v5

    const/16 v16, -0x1

    iget-object v0, v7, Lb/k/d/p;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v12, :cond_14

    const/4 v5, 0x0

    iget-object v8, v7, Lb/k/d/p;->l:Lb/k/d/c0$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v9, v6

    move/from16 v10, v16

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lb/k/d/c0;->a(Lb/k/d/p;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLb/k/d/c0$a;)V

    goto :goto_f

    :cond_14
    move v9, v6

    move/from16 v10, v16

    :goto_f
    move/from16 v0, p3

    :goto_10
    if-ge v0, v11, :cond_17

    move-object/from16 v8, p1

    .line 21
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/d/a;

    move-object/from16 v13, p2

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1, v10}, Lb/k/d/a;->a(I)V

    add-int/lit8 v2, v11, -0x1

    if-ne v0, v2, :cond_15

    move v2, v9

    goto :goto_11

    :cond_15
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1, v2}, Lb/k/d/a;->c(Z)V

    goto :goto_12

    :cond_16
    invoke-virtual {v1, v9}, Lb/k/d/a;->a(I)V

    invoke-virtual {v1}, Lb/k/d/a;->b()V

    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_17
    move-object/from16 v8, p1

    move-object/from16 v13, p2

    if-eqz v12, :cond_24

    .line 22
    new-instance v0, Lb/e/c;

    invoke-direct {v0}, Lb/e/c;-><init>()V

    invoke-virtual {v7, v0}, Lb/k/d/p;->a(Lb/e/c;)V

    add-int/lit8 v1, v11, -0x1

    move/from16 v15, p3

    move v2, v11

    :goto_13
    if-lt v1, v15, :cond_21

    .line 23
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/k/d/a;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    .line 24
    :goto_14
    iget-object v6, v3, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_19

    iget-object v6, v3, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/k/d/v$a;

    invoke-static {v6}, Lb/k/d/a;->b(Lb/k/d/v$a;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v5, v9

    goto :goto_15

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_19
    const/4 v5, 0x0

    :goto_15
    if-eqz v5, :cond_1a

    add-int/lit8 v5, v1, 0x1

    .line 25
    invoke-virtual {v3, v8, v5, v11}, Lb/k/d/a;->a(Ljava/util/ArrayList;II)Z

    move-result v5

    if-nez v5, :cond_1a

    move v5, v9

    goto :goto_16

    :cond_1a
    const/4 v5, 0x0

    :goto_16
    if-eqz v5, :cond_20

    iget-object v5, v7, Lb/k/d/p;->C:Ljava/util/ArrayList;

    if-nez v5, :cond_1b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v7, Lb/k/d/p;->C:Ljava/util/ArrayList;

    :cond_1b
    new-instance v5, Lb/k/d/p$j;

    invoke-direct {v5, v3, v4}, Lb/k/d/p$j;-><init>(Lb/k/d/a;Z)V

    iget-object v6, v7, Lb/k/d/p;->C:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 26
    :goto_17
    iget-object v10, v3, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_1d

    iget-object v10, v3, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/k/d/v$a;

    invoke-static {v10}, Lb/k/d/a;->b(Lb/k/d/v$a;)Z

    move-result v17

    if-eqz v17, :cond_1c

    iget-object v10, v10, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v10, v5}, Landroidx/fragment/app/Fragment;->a(Landroidx/fragment/app/Fragment$e;)V

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_1d
    if-eqz v4, :cond_1e

    .line 27
    invoke-virtual {v3}, Lb/k/d/a;->b()V

    const/4 v10, 0x0

    goto :goto_18

    :cond_1e
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lb/k/d/a;->c(Z)V

    :goto_18
    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1f

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v8, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1f
    invoke-virtual {v7, v0}, Lb/k/d/p;->a(Lb/e/c;)V

    goto :goto_19

    :cond_20
    const/4 v10, 0x0

    :goto_19
    add-int/lit8 v1, v1, -0x1

    const/4 v10, -0x1

    goto/16 :goto_13

    :cond_21
    const/4 v10, 0x0

    .line 28
    iget v1, v0, Lb/e/c;->d:I

    move v3, v10

    :goto_1a
    if-ge v3, v1, :cond_23

    .line 29
    iget-object v4, v0, Lb/e/c;->c:[Ljava/lang/Object;

    aget-object v4, v4, v3

    .line 30
    check-cast v4, Landroidx/fragment/app/Fragment;

    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v5, :cond_22

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->B0()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v4, Landroidx/fragment/app/Fragment;->N:F

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_23
    move v4, v2

    goto :goto_1b

    :cond_24
    move/from16 v15, p3

    const/4 v10, 0x0

    move v4, v11

    :goto_1b
    if-eq v4, v15, :cond_25

    if-eqz v12, :cond_25

    const/4 v5, 0x1

    .line 31
    iget-object v6, v7, Lb/k/d/p;->l:Lb/k/d/c0$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v0 .. v6}, Lb/k/d/c0;->a(Lb/k/d/p;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLb/k/d/c0$a;)V

    iget v0, v7, Lb/k/d/p;->n:I

    invoke-virtual {v7, v0, v9}, Lb/k/d/p;->a(IZ)V

    :cond_25
    :goto_1c
    if-ge v15, v11, :cond_29

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/d/a;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    iget v1, v0, Lb/k/d/a;->t:I

    if-ltz v1, :cond_26

    const/4 v1, -0x1

    iput v1, v0, Lb/k/d/a;->t:I

    goto :goto_1d

    :cond_26
    const/4 v1, -0x1

    .line 32
    :goto_1d
    iget-object v2, v0, Lb/k/d/v;->q:Ljava/util/ArrayList;

    if-eqz v2, :cond_28

    move v2, v10

    :goto_1e
    iget-object v3, v0, Lb/k/d/v;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    iget-object v3, v0, Lb/k/d/v;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_27
    const/4 v2, 0x0

    iput-object v2, v0, Lb/k/d/v;->q:Ljava/util/ArrayList;

    goto :goto_1f

    :cond_28
    const/4 v2, 0x0

    :goto_1f
    add-int/lit8 v15, v15, 0x1

    goto :goto_1c

    :cond_29
    if-eqz v14, :cond_2a

    .line 33
    iget-object v0, v7, Lb/k/d/p;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    :goto_20
    iget-object v0, v7, Lb/k/d/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2a

    iget-object v0, v7, Lb/k/d/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/d/p$g;

    invoke-interface {v0}, Lb/k/d/p$g;->a()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    :cond_2a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->b(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    iget v0, p0, Lb/k/d/p;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v3}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lb/k/d/p;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    :goto_1
    iget-object p1, p0, Lb/k/d/p;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Lb/k/d/p;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->Z()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput-object v0, p0, Lb/k/d/p;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Lb/k/d/p;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/k/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    iget-object v0, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    :cond_1
    iget-object p4, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2
    const/4 v0, -0x1

    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v0

    goto :goto_4

    :cond_4
    :goto_0
    iget-object v3, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_7

    iget-object v4, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/k/d/a;

    if-eqz p3, :cond_5

    .line 82
    iget-object v5, v4, Lb/k/d/v;->i:Ljava/lang/String;

    .line 83
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    if-ltz p4, :cond_6

    iget v4, v4, Lb/k/d/a;->t:I

    if-ne p4, v4, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-gez v3, :cond_8

    return v1

    :cond_8
    and-int/2addr p5, v2

    if-eqz p5, :cond_b

    :cond_9
    :goto_3
    add-int/2addr v3, v0

    if-ltz v3, :cond_b

    iget-object p5, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lb/k/d/a;

    if-eqz p3, :cond_a

    .line 84
    iget-object v4, p5, Lb/k/d/v;->i:Ljava/lang/String;

    .line 85
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_a
    if-ltz p4, :cond_b

    iget p5, p5, Lb/k/d/a;->t:I

    if-ne p4, p5, :cond_b

    goto :goto_3

    :cond_b
    :goto_4
    iget-object p3, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne v3, p3, :cond_c

    return v1

    :cond_c
    iget-object p3, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_5
    if-le p3, v3, :cond_d

    iget-object p4, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_d
    :goto_6
    return v2
.end method

.method public b(I)Landroidx/fragment/app/Fragment;
    .locals 4

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    .line 1
    iget-object v1, v0, Lb/k/d/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    iget-object v2, v0, Lb/k/d/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    iget v3, v2, Landroidx/fragment/app/Fragment;->w:I

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lb/k/d/u;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/d/t;

    if-eqz v1, :cond_2

    .line 2
    iget-object v2, v1, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    .line 3
    iget v1, v2, Landroidx/fragment/app/Fragment;->w:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0, p1}, Lb/k/d/u;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/d/p;->b:Z

    iget-object v0, p0, Lb/k/d/p;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lb/k/d/p;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->A:Z

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v1, p1}, Lb/k/d/u;->a(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lb/k/d/p;->i(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/k/d/p;->u:Z

    :cond_2
    return-void
.end method

.method public b(Lb/k/d/p$h;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lb/k/d/p;->o:Lb/k/d/m;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lb/k/d/p;->x:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lb/k/d/p;->c(Z)V

    iget-object p2, p0, Lb/k/d/p;->z:Ljava/util/ArrayList;

    iget-object v0, p0, Lb/k/d/p;->A:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Lb/k/d/p$h;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/k/d/p;->b:Z

    :try_start_0
    iget-object p1, p0, Lb/k/d/p;->z:Ljava/util/ArrayList;

    iget-object p2, p0, Lb/k/d/p;->A:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lb/k/d/p;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lb/k/d/p;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lb/k/d/p;->b()V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lb/k/d/p;->r()V

    invoke-virtual {p0}, Lb/k/d/p;->h()V

    iget-object p1, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {p1}, Lb/k/d/u;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->c(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 4

    iget v0, p0, Lb/k/d/p;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Lb/k/d/p;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public final b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/k/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/k/d/p$h;

    invoke-interface {v4, p1, p2}, Lb/k/d/p$h;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lb/k/d/p;->o:Lb/k/d/m;

    .line 4
    iget-object p1, p1, Lb/k/d/m;->d:Landroid/os/Handler;

    .line 5
    iget-object p2, p0, Lb/k/d/p;->E:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    .line 5
    iget-object v0, v0, Lb/k/d/u;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/d/t;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v1, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    .line 7
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/d/p;->v:Z

    iput-boolean v0, p0, Lb/k/d/p;->w:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/k/d/p;->a(I)V

    return-void
.end method

.method public final c(Landroidx/fragment/app/Fragment;)V
    .locals 3

    iget-object v0, p0, Lb/k/d/p;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/h/g/a;

    invoke-virtual {v2}, Lb/h/g/a;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0, p1}, Lb/k/d/p;->d(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lb/k/d/p;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/k/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lb/k/d/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/k/d/a;

    iget-boolean v3, v3, Lb/k/d/v;->p:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Lb/k/d/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/k/d/a;

    iget-boolean v3, v3, Lb/k/d/v;->p:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Lb/k/d/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Lb/k/d/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Z)V
    .locals 2

    iget-boolean v0, p0, Lb/k/d/p;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lb/k/d/p;->o:Lb/k/d/m;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lb/k/d/p;->x:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lb/k/d/p;->o:Lb/k/d/m;

    .line 1
    iget-object v1, v1, Lb/k/d/m;->d:Landroid/os/Handler;

    .line 2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p0}, Lb/k/d/p;->l()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_3
    :goto_0
    iget-object p1, p0, Lb/k/d/p;->z:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/k/d/p;->z:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/k/d/p;->A:Ljava/util/ArrayList;

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/k/d/p;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v0}, Lb/k/d/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p1, p0, Lb/k/d/p;->b:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Lb/k/d/p;->b:Z

    throw v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/d/p;->x:Z

    invoke-virtual {p0, v0}, Lb/k/d/p;->d(Z)Z

    invoke-virtual {p0}, Lb/k/d/p;->i()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lb/k/d/p;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/k/d/p;->o:Lb/k/d/m;

    iput-object v0, p0, Lb/k/d/p;->p:Lb/k/d/i;

    iput-object v0, p0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lb/k/d/p;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/k/d/p;->h:Lb/a/b;

    invoke-virtual {v1}, Lb/a/b;->c()V

    iput-object v0, p0, Lb/k/d/p;->g:Landroidx/activity/OnBackPressedDispatcher;

    :cond_0
    return-void
.end method

.method public final d(Landroidx/fragment/app/Fragment;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->r0()V

    iget-object v0, p0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lb/k/d/o;->g(Landroidx/fragment/app/Fragment;Z)V

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->S:Lb/k/d/i0;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->T:Lb/m/m;

    invoke-virtual {v2, v0}, Lb/m/m;->a(Ljava/lang/Object;)V

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->o:Z

    return-void
.end method

.method public d(Z)Z
    .locals 3

    invoke-virtual {p0, p1}, Lb/k/d/p;->c(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lb/k/d/p;->z:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/k/d/p;->A:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lb/k/d/p;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean p1, p0, Lb/k/d/p;->b:Z

    :try_start_0
    iget-object v0, p0, Lb/k/d/p;->z:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/k/d/p;->A:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lb/k/d/p;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lb/k/d/p;->b()V

    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lb/k/d/p;->b()V

    throw p1

    :cond_0
    invoke-virtual {p0}, Lb/k/d/p;->r()V

    invoke-virtual {p0}, Lb/k/d/p;->h()V

    iget-object p1, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {p1}, Lb/k/d/u;->a()V

    return v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->t0()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->A:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->A:Z

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v3, :cond_3

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0, p1}, Lb/k/d/u;->c(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, Lb/k/d/p;->i(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lb/k/d/p;->u:Z

    :cond_2
    invoke-virtual {p0, p1}, Lb/k/d/p;->p(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lb/k/d/p;->a(I)V

    return-void
.end method

.method public final f(Landroidx/fragment/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lb/k/d/p;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->v0()V

    :cond_0
    return-void
.end method

.method public final g(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2

    iget v0, p1, Landroidx/fragment/app/Fragment;->x:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lb/k/d/p;->p:Lb/k/d/i;

    invoke-virtual {v0}, Lb/k/d/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/k/d/p;->p:Lb/k/d/i;

    iget p1, p1, Landroidx/fragment/app/Fragment;->x:I

    invoke-virtual {v0, p1}, Lb/k/d/i;->a(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/d/p;->v:Z

    iput-boolean v0, p0, Lb/k/d/p;->w:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lb/k/d/p;->a(I)V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-boolean v0, p0, Lb/k/d/p;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/d/p;->y:Z

    invoke-virtual {p0}, Lb/k/d/p;->q()V

    :cond_0
    return-void
.end method

.method public h(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->M:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->M:Z

    invoke-virtual {p0, p1}, Lb/k/d/p;->p(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lb/k/d/p;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/k/d/p;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v1}, Lb/k/d/p;->c(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->F()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(Landroidx/fragment/app/Fragment;)Z
    .locals 5

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->D:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->E:Z

    if-nez v0, :cond_5

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->u:Lb/k/d/p;

    .line 1
    iget-object v0, p1, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_2

    invoke-virtual {p1, v4}, Lb/k/d/p;->i(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    :cond_2
    if-eqz v3, :cond_1

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method

.method public j()Lb/k/d/l;
    .locals 1

    iget-object v0, p0, Lb/k/d/p;->s:Lb/k/d/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->j()Lb/k/d/l;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lb/k/d/p;->t:Lb/k/d/l;

    return-object v0
.end method

.method public j(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    .line 1
    iget-object v2, v1, Lb/k/d/p;->r:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Lb/k/d/p;->j(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Landroid/view/LayoutInflater$Factory2;
    .locals 1

    iget-object v0, p0, Lb/k/d/p;->f:Lb/k/d/n;

    return-object v0
.end method

.method public k(Landroidx/fragment/app/Fragment;)V
    .locals 5

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/k/d/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lb/k/d/t;

    iget-object v1, p0, Lb/k/d/p;->m:Lb/k/d/o;

    invoke-direct {v0, v1, p1}, Lb/k/d/t;-><init>(Lb/k/d/o;Landroidx/fragment/app/Fragment;)V

    iget-object v1, p0, Lb/k/d/p;->o:Lb/k/d/m;

    .line 1
    iget-object v1, v1, Lb/k/d/m;->c:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/k/d/t;->a(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lb/k/d/p;->c:Lb/k/d/u;

    .line 3
    iget-object v1, v1, Lb/k/d/u;->b:Ljava/util/HashMap;

    .line 4
    iget-object v2, v0, Lb/k/d/t;->b:Landroidx/fragment/app/Fragment;

    .line 5
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->C:Z

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->B:Z

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lb/k/d/p;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Ignoring addRetainedFragment as the state is already saved"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lb/k/d/p;->D:Lb/k/d/s;

    invoke-virtual {v1, p1}, Lb/k/d/s;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3}, Lb/k/d/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating retained Fragments: Added "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Lb/k/d/p;->n(Landroidx/fragment/app/Fragment;)V

    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->C:Z

    :cond_4
    iget v1, p0, Lb/k/d/p;->n:I

    .line 9
    iput v1, v0, Lb/k/d/t;->c:I

    .line 10
    invoke-static {v3}, Lb/k/d/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added fragment to active set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public l(Landroidx/fragment/app/Fragment;)V
    .locals 7

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/k/d/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lb/k/d/p;->n:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "since it is not added to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1
    :cond_1
    iget v0, p0, Lb/k/d/p;->n:I

    invoke-virtual {p0, p1, v0}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;I)V

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0, p1}, Lb/k/d/u;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget v0, p1, Landroidx/fragment/app/Fragment;->N:F

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_3

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iput v3, p1, Landroidx/fragment/app/Fragment;->N:F

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->L:Z

    iget-object v0, p0, Lb/k/d/p;->o:Lb/k/d/m;

    .line 3
    iget-object v0, v0, Lb/k/d/m;->c:Landroid/content/Context;

    .line 4
    iget-object v3, p0, Lb/k/d/p;->p:Lb/k/d/i;

    invoke-static {v0, v3, p1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;Lb/k/d/i;Landroidx/fragment/app/Fragment;Z)Lb/k/d/g;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, v0, Lb/k/d/g;->a:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lb/k/d/g;->b:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, v0, Lb/k/d/g;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_5
    :goto_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v0, :cond_d

    .line 5
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/k/d/p;->o:Lb/k/d/m;

    .line 6
    iget-object v0, v0, Lb/k/d/m;->c:Landroid/content/Context;

    .line 7
    iget-object v3, p0, Lb/k/d/p;->p:Lb/k/d/i;

    iget-boolean v4, p1, Landroidx/fragment/app/Fragment;->z:Z

    xor-int/2addr v4, v2

    invoke-static {v0, v3, p1, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;Lb/k/d/i;Landroidx/fragment/app/Fragment;Z)Lb/k/d/g;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v3, v0, Lb/k/d/g;->b:Landroid/animation/Animator;

    if-eqz v3, :cond_8

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->L()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->d(Z)V

    goto :goto_1

    :cond_6
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v5, v0, Lb/k/d/g;->b:Landroid/animation/Animator;

    new-instance v6, Lb/k/d/q;

    invoke-direct {v6, p0, v3, v4, p1}, Lb/k/d/q;-><init>(Lb/k/d/p;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_7
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, v0, Lb/k/d/g;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v4, v0, Lb/k/d/g;->a:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Lb/k/d/g;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_9
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->L()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x8

    goto :goto_2

    :cond_a
    move v0, v1

    :goto_2
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->L()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->d(Z)V

    :cond_b
    :goto_3
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lb/k/d/p;->i(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v2, p0, Lb/k/d/p;->u:Z

    :cond_c
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->M:Z

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->c0()V

    :cond_d
    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lb/k/d/p;->v:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lb/k/d/p;->w:Z

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

.method public m()V
    .locals 2

    iget-object v0, p0, Lb/k/d/p;->o:Lb/k/d/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/d/p;->v:Z

    iput-boolean v0, p0, Lb/k/d/p;->w:Z

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->R()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public m(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->M()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0, p1}, Lb/k/d/u;->c(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, Lb/k/d/p;->i(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lb/k/d/p;->u:Z

    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->m:Z

    invoke-virtual {p0, p1}, Lb/k/d/p;->p(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method public n(Landroidx/fragment/app/Fragment;)V
    .locals 3

    invoke-virtual {p0}, Lb/k/d/p;->l()Z

    move-result v0

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-static {v2}, Lb/k/d/p;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Ignoring removeRetainedFragment as the state is already saved"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lb/k/d/p;->D:Lb/k/d/s;

    invoke-virtual {v0, p1}, Lb/k/d/s;->e(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lb/k/d/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating retained Fragments: Removed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public n()Z
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lb/k/d/p;->d(Z)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/k/d/p;->c(Z)V

    iget-object v1, p0, Lb/k/d/p;->r:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->m()Lb/k/d/p;

    move-result-object v1

    invoke-virtual {v1}, Lb/k/d/p;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lb/k/d/p;->z:Ljava/util/ArrayList;

    iget-object v4, p0, Lb/k/d/p;->A:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lb/k/d/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lb/k/d/p;->b:Z

    :try_start_0
    iget-object v0, p0, Lb/k/d/p;->z:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/k/d/p;->A:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Lb/k/d/p;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lb/k/d/p;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/k/d/p;->b()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lb/k/d/p;->r()V

    invoke-virtual {p0}, Lb/k/d/p;->h()V

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->a()V

    move v0, v1

    :goto_1
    return v0
.end method

.method public o()Landroid/os/Parcelable;
    .locals 9

    .line 1
    iget-object v0, p0, Lb/k/d/p;->C:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lb/k/d/p;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/k/d/p;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/d/p$j;

    invoke-virtual {v0}, Lb/k/d/p$j;->a()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/k/d/p;->i()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/k/d/p;->d(Z)Z

    iput-boolean v0, p0, Lb/k/d/p;->v:Z

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v3, "FragmentManager"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-static {v4}, Lb/k/d/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "saveAllState: no fragments!"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v5

    :cond_2
    iget-object v2, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v2}, Lb/k/d/u;->e()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v6, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    new-array v5, v6, [Landroidx/fragment/app/BackStackState;

    :goto_1
    if-ge v1, v6, :cond_4

    new-instance v7, Landroidx/fragment/app/BackStackState;

    iget-object v8, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/k/d/a;

    invoke-direct {v7, v8}, Landroidx/fragment/app/BackStackState;-><init>(Lb/k/d/a;)V

    aput-object v7, v5, v1

    invoke-static {v4}, Lb/k/d/p;->c(I)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding back stack #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v1}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    iput-object v0, v1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerState;->c:Ljava/util/ArrayList;

    iput-object v5, v1, Landroidx/fragment/app/FragmentManagerState;->d:[Landroidx/fragment/app/BackStackState;

    iget-object v0, p0, Lb/k/d/p;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v1, Landroidx/fragment/app/FragmentManagerState;->e:I

    iget-object v0, p0, Lb/k/d/p;->r:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    iput-object v0, v1, Landroidx/fragment/app/FragmentManagerState;->f:Ljava/lang/String;

    :cond_5
    return-object v1
.end method

.method public o(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lb/k/d/p;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->t:Lb/k/d/m;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/k/d/p;->r:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lb/k/d/p;->r:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Lb/k/d/p;->f(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Lb/k/d/p;->r:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Lb/k/d/p;->f(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public p()V
    .locals 5

    iget-object v0, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/k/d/p;->C:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/k/d/p;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, p0, Lb/k/d/p;->o:Lb/k/d/m;

    .line 1
    iget-object v1, v1, Lb/k/d/m;->d:Landroid/os/Handler;

    .line 2
    iget-object v2, p0, Lb/k/d/p;->E:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lb/k/d/p;->o:Lb/k/d/m;

    .line 3
    iget-object v1, v1, Lb/k/d/m;->d:Landroid/os/Handler;

    .line 4
    iget-object v2, p0, Lb/k/d/p;->E:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lb/k/d/p;->r()V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p(Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-virtual {p0, p1}, Lb/k/d/p;->g(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lb/k/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget v1, Lb/k/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_0
    sget v1, Lb/k/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->v()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->b(I)V

    :cond_1
    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v0}, Lb/k/d/u;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 1
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lb/k/d/p;->b:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/k/d/p;->y:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->I:Z

    iget v2, p0, Lb/k/d/p;->n:I

    invoke-virtual {p0, v1, v2}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public q(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->M:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->M:Z

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/k/d/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/k/d/p;->h:Lb/a/b;

    .line 1
    iput-boolean v2, v1, Lb/a/b;->a:Z

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/k/d/p;->h:Lb/a/b;

    .line 3
    iget-object v1, p0, Lb/k/d/p;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-lez v1, :cond_2

    .line 4
    iget-object v1, p0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v1}, Lb/k/d/p;->j(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 5
    :goto_1
    iput-boolean v2, v0, Lb/a/b;->a:Z

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    :goto_0
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lb/k/d/p;->o:Lb/k/d/m;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/k/d/p;->o:Lb/k/d/m;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
