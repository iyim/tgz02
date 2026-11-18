.class public Lc/d/a/a/v/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lc/d/a/a/v/x;


# direct methods
.method public constructor <init>(Lc/d/a/a/v/x;I)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/v/w;->c:Lc/d/a/a/v/x;

    iput p2, p0, Lc/d/a/a/v/w;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lc/d/a/a/v/w;->b:I

    iget-object v0, p0, Lc/d/a/a/v/w;->c:Lc/d/a/a/v/x;

    .line 1
    iget-object v0, v0, Lc/d/a/a/v/x;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->G0()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->d:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/Month;->a(II)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/a/v/w;->c:Lc/d/a/a/v/x;

    .line 3
    iget-object v0, v0, Lc/d/a/a/v/x;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->E0()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->a(Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/a/v/w;->c:Lc/d/a/a/v/x;

    .line 5
    iget-object v0, v0, Lc/d/a/a/v/x;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->a(Lcom/google/android/material/datepicker/Month;)V

    iget-object p1, p0, Lc/d/a/a/v/w;->c:Lc/d/a/a/v/x;

    .line 7
    iget-object p1, p1, Lc/d/a/a/v/x;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 8
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->a(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    return-void
.end method
