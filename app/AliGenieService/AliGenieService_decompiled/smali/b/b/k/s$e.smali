.class public Lb/b/k/s$e;
.super Lb/b/p/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic c:Lb/b/k/s;


# direct methods
.method public constructor <init>(Lb/b/k/s;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/s$e;->c:Lb/b/k/s;

    invoke-direct {p0, p2}, Lb/b/p/h;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lb/b/k/s$e;->c:Lb/b/k/s;

    iget-object v0, v0, Lb/b/k/s;->a:Lb/b/q/b0;

    check-cast v0, Lb/b/q/y0;

    invoke-virtual {v0}, Lb/b/q/y0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lb/b/p/h;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/p/h;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lb/b/k/s$e;->c:Lb/b/k/s;

    iget-boolean p3, p2, Lb/b/k/s;->b:Z

    if-nez p3, :cond_0

    iget-object p3, p2, Lb/b/k/s;->a:Lb/b/q/b0;

    check-cast p3, Lb/b/q/y0;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p3, Lb/b/q/y0;->m:Z

    .line 4
    iput-boolean v0, p2, Lb/b/k/s;->b:Z

    :cond_0
    return p1
.end method
