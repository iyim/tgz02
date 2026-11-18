.class public Lc/d/a/a/v/g;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source ""


# instance fields
.field public final synthetic a:Lc/d/a/a/v/q;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lc/d/a/a/v/q;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/v/g;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    iput-object p2, p0, Lc/d/a/a/v/g;->a:Lc/d/a/a/v/q;

    iput-object p3, p0, Lc/d/a/a/v/g;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lc/d/a/a/v/g;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lc/d/a/a/v/g;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->I0()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->S()I

    move-result p1

    :goto_0
    iget-object p2, p0, Lc/d/a/a/v/g;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p3, p0, Lc/d/a/a/v/g;->a:Lc/d/a/a/v/q;

    invoke-virtual {p3, p1}, Lc/d/a/a/v/q;->b(I)Lcom/google/android/material/datepicker/Month;

    move-result-object p3

    .line 1
    iput-object p3, p2, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Lcom/google/android/material/datepicker/Month;

    .line 2
    iget-object p2, p0, Lc/d/a/a/v/g;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object p3, p0, Lc/d/a/a/v/g;->a:Lc/d/a/a/v/q;

    .line 3
    iget-object p3, p3, Lc/d/a/a/v/q;->c:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {p3}, Lcom/google/android/material/datepicker/CalendarConstraints;->i()Lcom/google/android/material/datepicker/Month;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/material/datepicker/Month;->b(I)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/Month;->f()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
