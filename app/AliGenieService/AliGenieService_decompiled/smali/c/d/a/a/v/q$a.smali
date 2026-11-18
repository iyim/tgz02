.class public Lc/d/a/a/v/q$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/v/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final t:Landroid/widget/TextView;

.field public final u:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    sget v0, Lc/d/a/a/f;->month_title:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/d/a/a/v/q$a;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lc/d/a/a/v/q$a;->t:Landroid/widget/TextView;

    .line 1
    invoke-static {}, Lb/h/k/q;->a()Lb/h/k/q$d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2
    invoke-virtual {v1}, Lb/h/k/q$d;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0, v2}, Lb/h/k/q$d;->a(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb/h/k/q$d;->a()Z

    invoke-virtual {v1, v0}, Lb/h/k/q$d;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lb/h/k/q$d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lb/h/k/q;->p(Landroid/view/View;)Lb/h/k/a;

    iget v3, v1, Lb/h/k/q$d;->a:I

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget v1, v1, Lb/h/k/q$d;->d:I

    invoke-static {v0, v1}, Lb/h/k/q;->a(Landroid/view/View;I)V

    .line 3
    :cond_1
    :goto_0
    sget v0, Lc/d/a/a/f;->month_grid:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object p1, p0, Lc/d/a/a/v/q$a;->u:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    if-nez p2, :cond_2

    iget-object p1, p0, Lc/d/a/a/v/q$a;->t:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method
