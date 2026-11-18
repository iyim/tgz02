.class public Lc/d/a/a/z/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lc/d/a/a/z/e$f;

.field public final synthetic c:Lc/d/a/a/z/e;


# direct methods
.method public constructor <init>(Lc/d/a/a/z/e;ZLc/d/a/a/z/e$f;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/z/d;->c:Lc/d/a/a/z/e;

    iput-boolean p2, p0, Lc/d/a/a/z/d;->a:Z

    iput-object p3, p0, Lc/d/a/a/z/d;->b:Lc/d/a/a/z/e$f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/a/z/d;->c:Lc/d/a/a/z/e;

    const/4 v0, 0x0

    .line 1
    iput v0, p1, Lc/d/a/a/z/e;->u:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lc/d/a/a/z/e;->o:Landroid/animation/Animator;

    .line 3
    iget-object p1, p0, Lc/d/a/a/z/d;->b:Lc/d/a/a/z/e$f;

    if-eqz p1, :cond_0

    check-cast p1, Lc/d/a/a/z/b;

    .line 4
    iget-object v0, p1, Lc/d/a/a/z/b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    iget-object p1, p1, Lc/d/a/a/z/b;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lc/d/a/a/z/d;->c:Lc/d/a/a/z/e;

    iget-object v0, v0, Lc/d/a/a/z/e;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lc/d/a/a/z/d;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lc/d/a/a/a0/n;->a(IZ)V

    iget-object v0, p0, Lc/d/a/a/z/d;->c:Lc/d/a/a/z/e;

    const/4 v1, 0x2

    .line 1
    iput v1, v0, Lc/d/a/a/z/e;->u:I

    .line 2
    iput-object p1, v0, Lc/d/a/a/z/e;->o:Landroid/animation/Animator;

    return-void
.end method
