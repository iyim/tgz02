.class public Lc/b/a/a/c/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/aligenie/ags/access/AccessService;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lc/b/a/a/c/d;


# direct methods
.method public constructor <init>(Lc/b/a/a/c/d;ILcom/aligenie/ags/access/AccessService;II)V
    .locals 0

    iput-object p1, p0, Lc/b/a/a/c/c;->e:Lc/b/a/a/c/d;

    iput p2, p0, Lc/b/a/a/c/c;->a:I

    iput-object p3, p0, Lc/b/a/a/c/c;->b:Lcom/aligenie/ags/access/AccessService;

    iput p4, p0, Lc/b/a/a/c/c;->c:I

    iput p5, p0, Lc/b/a/a/c/c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/b/a/a/c/c;->e:Lc/b/a/a/c/d;

    .line 1
    iget-object p1, p1, Lc/b/a/a/c/d;->b:Landroid/widget/ImageView;

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lc/b/a/a/c/c;->e:Lc/b/a/a/c/d;

    .line 3
    iget-object p1, p1, Lc/b/a/a/c/d;->e:Lc/b/a/a/c/f$a;

    if-eqz p1, :cond_0

    const-string p1, "Access"

    const-string v0, "onAnimationEnd"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lc/b/a/a/c/c;->e:Lc/b/a/a/c/d;

    .line 5
    iget-object p1, p1, Lc/b/a/a/c/d;->e:Lc/b/a/a/c/f$a;

    .line 6
    check-cast p1, Lc/b/a/a/c/e;

    .line 7
    iget-object p1, p1, Lc/b/a/a/c/e;->a:Lc/b/a/a/c/f;

    invoke-virtual {p1}, Lc/b/a/a/c/f;->a()V

    .line 8
    iget p1, p0, Lc/b/a/a/c/c;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lc/b/a/a/c/c$a;

    invoke-direct {v0, p0}, Lc/b/a/a/c/c$a;-><init>(Lc/b/a/a/c/c;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
