.class public Lc/d/a/a/v/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field public final synthetic c:Lc/d/a/a/v/q;


# direct methods
.method public constructor <init>(Lc/d/a/a/v/q;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/v/p;->c:Lc/d/a/a/v/q;

    iput-object p2, p0, Lc/d/a/a/v/p;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lc/d/a/a/v/p;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lc/d/a/a/v/o;

    move-result-object p1

    .line 1
    invoke-virtual {p1}, Lc/d/a/a/v/o;->a()I

    move-result p2

    if-lt p3, p2, :cond_0

    invoke-virtual {p1}, Lc/d/a/a/v/o;->b()I

    move-result p1

    if-gt p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lc/d/a/a/v/p;->c:Lc/d/a/a/v/q;

    .line 3
    iget-object p1, p1, Lc/d/a/a/v/q;->e:Lcom/google/android/material/datepicker/MaterialCalendar$e;

    .line 4
    iget-object p2, p0, Lc/d/a/a/v/p;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lc/d/a/a/v/o;

    move-result-object p2

    invoke-virtual {p2, p3}, Lc/d/a/a/v/o;->getItem(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendar$d;

    .line 5
    iget-object p4, p1, Lcom/google/android/material/datepicker/MaterialCalendar$d;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 6
    iget-object p4, p4, Lcom/google/android/material/datepicker/MaterialCalendar;->a0:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 7
    invoke-virtual {p4}, Lcom/google/android/material/datepicker/CalendarConstraints;->e()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object p4

    invoke-interface {p4, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->a(J)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p1, Lcom/google/android/material/datepicker/MaterialCalendar$d;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 8
    iget-object p4, p4, Lcom/google/android/material/datepicker/MaterialCalendar;->Z:Lcom/google/android/material/datepicker/DateSelector;

    .line 9
    invoke-interface {p4, p2, p3}, Lcom/google/android/material/datepicker/DateSelector;->b(J)V

    iget-object p2, p1, Lcom/google/android/material/datepicker/MaterialCalendar$d;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p2, p2, Lc/d/a/a/v/s;->X:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/d/a/a/v/r;

    iget-object p4, p1, Lcom/google/android/material/datepicker/MaterialCalendar$d;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 10
    iget-object p4, p4, Lcom/google/android/material/datepicker/MaterialCalendar;->Z:Lcom/google/android/material/datepicker/DateSelector;

    .line 11
    invoke-interface {p4}, Lcom/google/android/material/datepicker/DateSelector;->a()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Lc/d/a/a/v/r;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lcom/google/android/material/datepicker/MaterialCalendar$d;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 12
    iget-object p2, p2, Lcom/google/android/material/datepicker/MaterialCalendar;->f0:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$f;->c()V

    iget-object p2, p1, Lcom/google/android/material/datepicker/MaterialCalendar$d;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {p2}, Lcom/google/android/material/datepicker/MaterialCalendar;->a(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/google/android/material/datepicker/MaterialCalendar$d;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->a(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$f;->c()V

    :cond_2
    return-void
.end method
