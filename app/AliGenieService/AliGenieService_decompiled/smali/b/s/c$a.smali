.class public Lb/s/c$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/s/c;->a(Landroid/view/ViewGroup;Lb/s/r;Lb/s/r;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:F


# direct methods
.method public constructor <init>(Lb/s/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    iput-object p2, p0, Lb/s/c$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lb/s/c$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lb/s/c$a;->c:Landroid/view/View;

    iput p5, p0, Lb/s/c$a;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lb/s/c$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lb/s/y;->a(Landroid/view/View;)Lb/s/x;

    move-result-object p1

    iget-object v0, p0, Lb/s/c$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, Lb/s/x;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lb/s/c$a;->c:Landroid/view/View;

    iget v0, p0, Lb/s/c$a;->d:F

    .line 1
    sget-object v1, Lb/s/y;->a:Lb/s/e0;

    invoke-virtual {v1, p1, v0}, Lb/s/e0;->a(Landroid/view/View;F)V

    return-void
.end method
