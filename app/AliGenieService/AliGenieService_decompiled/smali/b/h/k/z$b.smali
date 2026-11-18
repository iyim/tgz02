.class public Lb/h/k/z$b;
.super Lb/h/k/z$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/k/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/h/k/z$d;-><init>()V

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Lb/h/k/z$b;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lb/h/k/z;)V
    .locals 1

    invoke-direct {p0}, Lb/h/k/z$d;-><init>()V

    invoke-virtual {p1}, Lb/h/k/z;->f()Landroid/view/WindowInsets;

    move-result-object p1

    new-instance v0, Landroid/view/WindowInsets$Builder;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Lb/h/k/z$b;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public a(Lb/h/e/b;)V
    .locals 1

    iget-object v0, p0, Lb/h/k/z$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lb/h/e/b;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public b()Lb/h/k/z;
    .locals 1

    invoke-virtual {p0}, Lb/h/k/z$d;->a()V

    iget-object v0, p0, Lb/h/k/z$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lb/h/k/z;->a(Landroid/view/WindowInsets;)Lb/h/k/z;

    move-result-object v0

    return-object v0
.end method

.method public b(Lb/h/e/b;)V
    .locals 1

    iget-object v0, p0, Lb/h/k/z$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lb/h/e/b;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public c(Lb/h/e/b;)V
    .locals 1

    iget-object v0, p0, Lb/h/k/z$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lb/h/e/b;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public d(Lb/h/e/b;)V
    .locals 1

    iget-object v0, p0, Lb/h/k/z$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lb/h/e/b;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public e(Lb/h/e/b;)V
    .locals 1

    iget-object v0, p0, Lb/h/k/z$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lb/h/e/b;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
