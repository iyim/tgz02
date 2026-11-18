.class public Lb/k/d/o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/k/d/o$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lb/k/d/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lb/k/d/p;


# direct methods
.method public constructor <init>(Lb/k/d/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lb/k/d/o;->b:Lb/k/d/p;

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 5
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, p2, v1}, Lb/k/d/o;->a(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/k/d/o$a;

    if-eqz p3, :cond_1

    iget-boolean v0, p2, Lb/k/d/o$a;->b:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 1
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lb/k/d/o;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/k/d/o$a;

    if-eqz p3, :cond_1

    iget-boolean v0, p2, Lb/k/d/o$a;->b:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 13
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, p2, p3, v1}, Lb/k/d/o;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/k/d/o$a;

    if-eqz p4, :cond_1

    iget-boolean p3, p2, Lb/k/d/o$a;->b:Z

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 9
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, p1, v1}, Lb/k/d/o;->a(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/d/o$a;

    if-eqz p2, :cond_1

    iget-boolean v1, v0, Lb/k/d/o$a;->b:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 9
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, p1, p2, v1}, Lb/k/d/o;->b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/k/d/o$a;

    if-eqz p3, :cond_1

    iget-boolean v0, p2, Lb/k/d/o$a;->b:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 1
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lb/k/d/o;->b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/k/d/o$a;

    if-eqz p3, :cond_1

    iget-boolean v0, p2, Lb/k/d/o$a;->b:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 5
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, v1}, Lb/k/d/o;->b(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/d/o$a;

    if-eqz p2, :cond_1

    iget-boolean v1, v0, Lb/k/d/o$a;->b:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 5
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, p2, v1}, Lb/k/d/o;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/k/d/o$a;

    if-eqz p3, :cond_1

    iget-boolean v0, p2, Lb/k/d/o$a;->b:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public c(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 1
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lb/k/d/o;->c(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/d/o$a;

    if-eqz p2, :cond_1

    iget-boolean v1, v0, Lb/k/d/o$a;->b:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 5
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, p2, v1}, Lb/k/d/o;->d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/k/d/o$a;

    if-eqz p3, :cond_1

    iget-boolean v0, p2, Lb/k/d/o$a;->b:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public d(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 1
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lb/k/d/o;->d(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/d/o$a;

    if-eqz p2, :cond_1

    iget-boolean v1, v0, Lb/k/d/o$a;->b:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public e(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 1
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lb/k/d/o;->e(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/d/o$a;

    if-eqz p2, :cond_1

    iget-boolean v1, v0, Lb/k/d/o$a;->b:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public f(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 1
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lb/k/d/o;->f(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/d/o$a;

    if-eqz p2, :cond_1

    iget-boolean v1, v0, Lb/k/d/o$a;->b:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public g(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    iget-object v0, p0, Lb/k/d/o;->b:Lb/k/d/p;

    .line 1
    iget-object v0, v0, Lb/k/d/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lb/k/d/p;->m:Lb/k/d/o;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lb/k/d/o;->g(Landroidx/fragment/app/Fragment;Z)V

    :cond_0
    iget-object p1, p0, Lb/k/d/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/d/o$a;

    if-eqz p2, :cond_1

    iget-boolean v1, v0, Lb/k/d/o$a;->b:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lb/k/d/o$a;->a:Lb/k/d/p$f;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method
