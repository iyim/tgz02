.class public Lb/k/d/c$a;
.super Lb/k/d/m;
.source ""

# interfaces
.implements Lb/m/v;
.implements Lb/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/k/d/m<",
        "Lb/k/d/c;",
        ">;",
        "Lb/m/v;",
        "Lb/a/c;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lb/k/d/c;


# direct methods
.method public constructor <init>(Lb/k/d/c;)V
    .locals 0

    iput-object p1, p0, Lb/k/d/c$a;->f:Lb/k/d/c;

    invoke-direct {p0, p1}, Lb/k/d/m;-><init>(Lb/k/d/c;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/k/d/c$a;->f:Lb/k/d/c;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a()Landroidx/lifecycle/Lifecycle;
    .locals 1

    iget-object v0, p0, Lb/k/d/c$a;->f:Lb/k/d/c;

    iget-object v0, v0, Lb/k/d/c;->i:Lb/m/i;

    return-object v0
.end method

.method public b()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Lb/k/d/c$a;->f:Lb/k/d/c;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->b()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lb/k/d/c$a;->f:Lb/k/d/c;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Lb/m/u;
    .locals 1

    iget-object v0, p0, Lb/k/d/c$a;->f:Lb/k/d/c;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->d()Lb/m/u;

    move-result-object v0

    return-object v0
.end method
