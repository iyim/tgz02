.class public Lb/h/k/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/k/q;->a(Landroid/view/View;Lb/h/k/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/h/k/m;


# direct methods
.method public constructor <init>(Lb/h/k/m;)V
    .locals 0

    iput-object p1, p0, Lb/h/k/q$a;->a:Lb/h/k/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {p2, p1}, Lb/h/k/z;->a(Landroid/view/WindowInsets;Landroid/view/View;)Lb/h/k/z;

    move-result-object p2

    iget-object v0, p0, Lb/h/k/q$a;->a:Lb/h/k/m;

    invoke-interface {v0, p1, p2}, Lb/h/k/m;->a(Landroid/view/View;Lb/h/k/z;)Lb/h/k/z;

    move-result-object p1

    invoke-virtual {p1}, Lb/h/k/z;->f()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
