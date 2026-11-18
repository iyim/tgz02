.class public Lc/d/a/a/a0/g$a;
.super Lc/d/a/a/c0/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/a0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/a/a0/g;


# direct methods
.method public constructor <init>(Lc/d/a/a/a0/g;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/a0/g$a;->a:Lc/d/a/a/a0/g;

    invoke-direct {p0}, Lc/d/a/a/c0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object p1, p0, Lc/d/a/a/a0/g$a;->a:Lc/d/a/a/a0/g;

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lc/d/a/a/a0/g;->d:Z

    .line 2
    iget-object p1, p1, Lc/d/a/a/a0/g;->e:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/a/a0/g$b;

    if-eqz p1, :cond_0

    check-cast p1, Lc/d/a/a/t/b;

    .line 4
    invoke-virtual {p1}, Lc/d/a/a/t/b;->o()V

    invoke-virtual {p1}, Lc/d/a/a/f0/g;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lc/d/a/a/a0/g$a;->a:Lc/d/a/a/a0/g;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p1, Lc/d/a/a/a0/g;->d:Z

    .line 6
    iget-object p1, p1, Lc/d/a/a/a0/g;->e:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/a/a0/g$b;

    if-eqz p1, :cond_1

    check-cast p1, Lc/d/a/a/t/b;

    .line 8
    invoke-virtual {p1}, Lc/d/a/a/t/b;->o()V

    invoke-virtual {p1}, Lc/d/a/a/f0/g;->invalidateSelf()V

    :cond_1
    return-void
.end method
