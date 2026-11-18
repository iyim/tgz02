.class public Lb/b/q/z;
.super Landroid/widget/ToggleButton;
.source ""


# instance fields
.field public final b:Lb/b/q/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101004b

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lb/b/q/r0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lb/b/q/w;

    invoke-direct {p1, p0}, Lb/b/q/w;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lb/b/q/z;->b:Lb/b/q/w;

    iget-object p1, p0, Lb/b/q/z;->b:Lb/b/q/w;

    invoke-virtual {p1, p2, v0}, Lb/b/q/w;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method
