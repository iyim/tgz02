.class public Landroidx/appcompat/app/AppCompatDelegateImpl$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/p/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lb/b/p/a$a;

.field public final synthetic b:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lb/b/p/a$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->a:Lb/b/p/a$a;

    return-void
.end method


# virtual methods
.method public a(Lb/b/p/a;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->a:Lb/b/p/a$a;

    invoke-interface {v0, p1}, Lb/b/p/a$a;->a(Lb/b/p/a;)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f()V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lb/h/k/q;->a(Landroid/view/View;)Lb/h/k/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/h/k/v;->a(F)Lb/h/k/v;

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Lb/h/k/v;

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Lb/h/k/v;

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$d$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$d$a;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl$d;)V

    invoke-virtual {p1, v0}, Lb/h/k/v;->a(Lb/h/k/w;)Lb/h/k/v;

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Lb/b/k/j;

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    invoke-interface {v0, p1}, Lb/b/k/j;->b(Lb/b/p/a;)V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    invoke-static {p1}, Lb/h/k/q;->F(Landroid/view/View;)V

    return-void
.end method

.method public a(Lb/b/p/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    invoke-static {v0}, Lb/h/k/q;->F(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->a:Lb/b/p/a$a;

    invoke-interface {v0, p1, p2}, Lb/b/p/a$a;->a(Lb/b/p/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(Lb/b/p/a;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->a:Lb/b/p/a$a;

    invoke-interface {v0, p1, p2}, Lb/b/p/a$a;->a(Lb/b/p/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lb/b/p/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->a:Lb/b/p/a$a;

    invoke-interface {v0, p1, p2}, Lb/b/p/a$a;->b(Lb/b/p/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
