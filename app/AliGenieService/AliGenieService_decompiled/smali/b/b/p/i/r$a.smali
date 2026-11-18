.class public Lb/b/p/i/r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/p/i/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/b/p/i/r;


# direct methods
.method public constructor <init>(Lb/b/p/i/r;)V
    .locals 0

    iput-object p1, p0, Lb/b/p/i/r$a;->b:Lb/b/p/i/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lb/b/p/i/r$a;->b:Lb/b/p/i/r;

    invoke-virtual {v0}, Lb/b/p/i/r;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/p/i/r$a;->b:Lb/b/p/i/r;

    iget-object v1, v0, Lb/b/p/i/r;->j:Lb/b/q/l0;

    .line 1
    iget-boolean v1, v1, Lb/b/q/j0;->E:Z

    if-nez v1, :cond_2

    .line 2
    iget-object v0, v0, Lb/b/p/i/r;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/p/i/r$a;->b:Lb/b/p/i/r;

    iget-object v0, v0, Lb/b/p/i/r;->j:Lb/b/q/l0;

    invoke-virtual {v0}, Lb/b/q/j0;->e()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/b/p/i/r$a;->b:Lb/b/p/i/r;

    invoke-virtual {v0}, Lb/b/p/i/r;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
