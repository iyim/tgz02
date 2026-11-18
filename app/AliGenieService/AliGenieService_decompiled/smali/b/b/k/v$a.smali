.class public Lb/b/k/v$a;
.super Lb/h/k/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/k/v;


# direct methods
.method public constructor <init>(Lb/b/k/v;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/v$a;->a:Lb/b/k/v;

    invoke-direct {p0}, Lb/h/k/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lb/b/k/v$a;->a:Lb/b/k/v;

    iget-boolean v0, p1, Lb/b/k/v;->q:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lb/b/k/v;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lb/b/k/v$a;->a:Lb/b/k/v;

    iget-object p1, p1, Lb/b/k/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Lb/b/k/v$a;->a:Lb/b/k/v;

    iget-object p1, p1, Lb/b/k/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Lb/b/k/v$a;->a:Lb/b/k/v;

    iget-object p1, p1, Lb/b/k/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Lb/b/k/v$a;->a:Lb/b/k/v;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/k/v;->v:Lb/b/p/g;

    .line 1
    iget-object v1, p1, Lb/b/k/v;->l:Lb/b/p/a$a;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lb/b/k/v;->k:Lb/b/p/a;

    invoke-interface {v1, v2}, Lb/b/p/a$a;->a(Lb/b/p/a;)V

    iput-object v0, p1, Lb/b/k/v;->k:Lb/b/p/a;

    iput-object v0, p1, Lb/b/k/v;->l:Lb/b/p/a$a;

    .line 2
    :cond_1
    iget-object p1, p0, Lb/b/k/v$a;->a:Lb/b/k/v;

    iget-object p1, p1, Lb/b/k/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lb/h/k/q;->F(Landroid/view/View;)V

    :cond_2
    return-void
.end method
