.class public Landroidx/appcompat/widget/AppCompatSpinner$d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$d;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/appcompat/widget/AppCompatSpinner$d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$d;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->b:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->b:Landroidx/appcompat/widget/AppCompatSpinner$d;

    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner$d;->M:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->b:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-virtual {v0}, Lb/b/q/j0;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->b:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->i()V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->b:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a(Landroidx/appcompat/widget/AppCompatSpinner$d;)V

    :goto_0
    return-void
.end method
