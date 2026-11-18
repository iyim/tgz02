.class public abstract Lb/b/p/i/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lb/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/h<",
            "Lb/h/f/a/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lb/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/h<",
            "Lb/h/f/a/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/p/i/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 3

    instance-of v0, p1, Lb/h/f/a/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lb/h/f/a/b;

    iget-object v1, p0, Lb/b/p/i/c;->b:Lb/e/h;

    if-nez v1, :cond_0

    new-instance v1, Lb/e/h;

    invoke-direct {v1}, Lb/e/h;-><init>()V

    iput-object v1, p0, Lb/b/p/i/c;->b:Lb/e/h;

    :cond_0
    iget-object v1, p0, Lb/b/p/i/c;->b:Lb/e/h;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v1, p1, v2}, Lb/e/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    new-instance p1, Lb/b/p/i/k;

    iget-object v1, p0, Lb/b/p/i/c;->a:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lb/b/p/i/k;-><init>(Landroid/content/Context;Lb/h/f/a/b;)V

    iget-object v1, p0, Lb/b/p/i/c;->b:Lb/e/h;

    invoke-virtual {v1, v0, p1}, Lb/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public final a(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    instance-of v0, p1, Lb/h/f/a/c;

    if-eqz v0, :cond_2

    check-cast p1, Lb/h/f/a/c;

    iget-object v0, p0, Lb/b/p/i/c;->c:Lb/e/h;

    if-nez v0, :cond_0

    new-instance v0, Lb/e/h;

    invoke-direct {v0}, Lb/e/h;-><init>()V

    iput-object v0, p0, Lb/b/p/i/c;->c:Lb/e/h;

    :cond_0
    iget-object v0, p0, Lb/b/p/i/c;->c:Lb/e/h;

    invoke-virtual {v0, p1}, Lb/e/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    new-instance v0, Lb/b/p/i/t;

    iget-object v1, p0, Lb/b/p/i/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lb/b/p/i/t;-><init>(Landroid/content/Context;Lb/h/f/a/c;)V

    iget-object v1, p0, Lb/b/p/i/c;->c:Lb/e/h;

    invoke-virtual {v1, p1, v0}, Lb/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method
