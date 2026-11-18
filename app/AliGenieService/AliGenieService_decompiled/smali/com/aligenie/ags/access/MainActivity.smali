.class public Lcom/aligenie/ags/access/MainActivity;
.super Lb/b/k/i;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/k/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lb/b/k/i;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lc/b/a/a/b;->activity_main:I

    invoke-virtual {p0, p1}, Lb/b/k/i;->setContentView(I)V

    sget p1, Lc/b/a/a/a;->toolbar:I

    invoke-virtual {p0, p1}, Lb/b/k/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lb/b/k/i;->a(Landroidx/appcompat/widget/Toolbar;)V

    sget p1, Lc/b/a/a/a;->fab:I

    invoke-virtual {p0, p1}, Lb/b/k/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Lcom/aligenie/ags/access/MainActivity$a;

    invoke-direct {v0, p0}, Lcom/aligenie/ags/access/MainActivity$a;-><init>(Lcom/aligenie/ags/access/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
