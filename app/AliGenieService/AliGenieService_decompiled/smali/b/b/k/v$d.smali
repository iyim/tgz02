.class public Lb/b/k/v$d;
.super Lb/b/p/a;
.source ""

# interfaces
.implements Lb/b/p/i/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lb/b/p/i/g;

.field public f:Lb/b/p/a$a;

.field public g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Lb/b/k/v;


# direct methods
.method public constructor <init>(Lb/b/k/v;Landroid/content/Context;Lb/b/p/a$a;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    invoke-direct {p0}, Lb/b/p/a;-><init>()V

    iput-object p2, p0, Lb/b/k/v$d;->d:Landroid/content/Context;

    iput-object p3, p0, Lb/b/k/v$d;->f:Lb/b/p/a$a;

    new-instance p1, Lb/b/p/i/g;

    invoke-direct {p1, p2}, Lb/b/p/i/g;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 1
    iput p2, p1, Lb/b/p/i/g;->l:I

    .line 2
    iput-object p1, p0, Lb/b/k/v$d;->e:Lb/b/p/i/g;

    iget-object p1, p0, Lb/b/k/v$d;->e:Lb/b/p/i/g;

    invoke-virtual {p1, p0}, Lb/b/p/i/g;->a(Lb/b/p/i/g$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v1, v0, Lb/b/k/v;->j:Lb/b/k/v$d;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lb/b/k/v;->r:Z

    iget-boolean v0, v0, Lb/b/k/v;->s:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    if-nez v2, :cond_3

    iget-object v0, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iput-object p0, v0, Lb/b/k/v;->k:Lb/b/p/a;

    iget-object v1, p0, Lb/b/k/v$d;->f:Lb/b/p/a$a;

    iput-object v1, v0, Lb/b/k/v;->l:Lb/b/p/a$a;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lb/b/k/v$d;->f:Lb/b/p/a$a;

    invoke-interface {v0, p0}, Lb/b/p/a$a;->a(Lb/b/p/a;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/k/v$d;->f:Lb/b/p/a$a;

    iget-object v1, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    invoke-virtual {v1, v3}, Lb/b/k/v;->d(Z)V

    iget-object v1, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v1, v1, Lb/b/k/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->a()V

    iget-object v1, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v1, v1, Lb/b/k/v;->e:Lb/b/q/b0;

    check-cast v1, Lb/b/q/y0;

    .line 1
    iget-object v1, v1, Lb/b/q/y0;->a:Landroidx/appcompat/widget/Toolbar;

    const/16 v2, 0x20

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v2, v1, Lb/b/k/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Lb/b/k/v;->x:Z

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v1, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iput-object v0, v1, Lb/b/k/v;->j:Lb/b/k/v$d;

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v0, v0, Lb/b/k/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/k/v$d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v0, v0, Lb/b/k/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/b/k/v$d;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lb/b/p/i/g;)V
    .locals 0

    iget-object p1, p0, Lb/b/k/v$d;->f:Lb/b/p/a$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lb/b/k/v$d;->g()V

    iget-object p1, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object p1, p1, Lb/b/k/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->e()Z

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v0, v0, Lb/b/k/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 3
    iput-boolean p1, p0, Lb/b/p/a;->c:Z

    .line 4
    iget-object v0, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v0, v0, Lb/b/k/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public a(Lb/b/p/i/g;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lb/b/k/v$d;->f:Lb/b/p/a$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Lb/b/p/a$a;->a(Lb/b/p/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/b/k/v$d;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v0, v0, Lb/b/k/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/k/v$d;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v0, v0, Lb/b/k/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lb/b/k/v$d;->e:Lb/b/p/i/g;

    return-object v0
.end method

.method public d()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Lb/b/p/f;

    iget-object v1, p0, Lb/b/k/v$d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/b/p/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v0, v0, Lb/b/k/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v0, v0, Lb/b/k/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v0, v0, Lb/b/k/v;->j:Lb/b/k/v$d;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/k/v$d;->e:Lb/b/p/i/g;

    invoke-virtual {v0}, Lb/b/p/i/g;->k()V

    :try_start_0
    iget-object v0, p0, Lb/b/k/v$d;->f:Lb/b/p/a$a;

    iget-object v1, p0, Lb/b/k/v$d;->e:Lb/b/p/i/g;

    invoke-interface {v0, p0, v1}, Lb/b/p/a$a;->a(Lb/b/p/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/b/k/v$d;->e:Lb/b/p/i/g;

    invoke-virtual {v0}, Lb/b/p/i/g;->j()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/b/k/v$d;->e:Lb/b/p/i/g;

    invoke-virtual {v1}, Lb/b/p/i/g;->j()V

    throw v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lb/b/k/v$d;->h:Lb/b/k/v;

    iget-object v0, v0, Lb/b/k/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->c()Z

    move-result v0

    return v0
.end method
