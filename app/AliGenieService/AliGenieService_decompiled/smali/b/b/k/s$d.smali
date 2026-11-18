.class public final Lb/b/k/s$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/p/i/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lb/b/k/s;


# direct methods
.method public constructor <init>(Lb/b/k/s;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/s$d;->b:Lb/b/k/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/p/i/g;)V
    .locals 4

    iget-object v0, p0, Lb/b/k/s$d;->b:Lb/b/k/s;

    iget-object v1, v0, Lb/b/k/s;->c:Landroid/view/Window$Callback;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lb/b/k/s;->a:Lb/b/q/b0;

    check-cast v0, Lb/b/q/y0;

    .line 1
    iget-object v0, v0, Lb/b/q/y0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->n()Z

    move-result v0

    const/16 v1, 0x6c

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/k/s$d;->b:Lb/b/k/s;

    iget-object v0, v0, Lb/b/k/s;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/k/s$d;->b:Lb/b/k/s;

    iget-object v0, v0, Lb/b/k/s;->c:Landroid/view/Window$Callback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/k/s$d;->b:Lb/b/k/s;

    iget-object v0, v0, Lb/b/k/s;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lb/b/p/i/g;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
