.class public Lb/b/k/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/k/m;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/h/k/z;)Lb/h/k/z;
    .locals 6

    invoke-virtual {p2}, Lb/h/k/z;->d()I

    move-result v0

    iget-object v1, p0, Lb/b/k/l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Lb/h/k/z;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Lb/h/k/z;->b()I

    move-result v0

    invoke-virtual {p2}, Lb/h/k/z;->c()I

    move-result v2

    invoke-virtual {p2}, Lb/h/k/z;->a()I

    move-result v3

    .line 1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_0

    new-instance v4, Lb/h/k/z$c;

    invoke-direct {v4, p2}, Lb/h/k/z$c;-><init>(Lb/h/k/z;)V

    goto :goto_0

    :cond_0
    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1

    new-instance v4, Lb/h/k/z$b;

    invoke-direct {v4, p2}, Lb/h/k/z$b;-><init>(Lb/h/k/z;)V

    goto :goto_0

    :cond_1
    new-instance v4, Lb/h/k/z$a;

    invoke-direct {v4, p2}, Lb/h/k/z$a;-><init>(Lb/h/k/z;)V

    .line 2
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lb/h/e/b;->a(IIII)Lb/h/e/b;

    move-result-object p2

    .line 3
    invoke-virtual {v4, p2}, Lb/h/k/z$d;->d(Lb/h/e/b;)V

    .line 4
    invoke-virtual {v4}, Lb/h/k/z$d;->b()Lb/h/k/z;

    move-result-object p2

    .line 5
    :cond_2
    invoke-static {p1, p2}, Lb/h/k/q;->a(Landroid/view/View;Lb/h/k/z;)Lb/h/k/z;

    move-result-object p1

    return-object p1
.end method
