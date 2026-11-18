.class public Lc/d/a/a/v/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lc/d/a/a/v/q;

.field public final synthetic c:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lc/d/a/a/v/q;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/v/i;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    iput-object p2, p0, Lc/d/a/a/v/i;->b:Lc/d/a/a/v/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/d/a/a/v/i;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->I0()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lc/d/a/a/v/i;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 1
    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->f0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$f;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lc/d/a/a/v/i;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v1, p0, Lc/d/a/a/v/i;->b:Lc/d/a/a/v/q;

    invoke-virtual {v1, p1}, Lc/d/a/a/v/q;->b(I)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->a(Lcom/google/android/material/datepicker/Month;)V

    :cond_0
    return-void
.end method
