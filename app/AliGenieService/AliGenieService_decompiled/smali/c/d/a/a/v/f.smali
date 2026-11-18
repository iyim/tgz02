.class public Lc/d/a/a/v/f;
.super Lb/h/k/a;
.source ""


# instance fields
.field public final synthetic d:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/v/f;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 1
    sget-object p1, Lb/h/k/a;->c:Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p0, p1}, Lb/h/k/a;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/h/k/a0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/h/k/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object p1, p0, Lc/d/a/a/v/f;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 5
    iget-object p1, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->h0:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/d/a/a/v/f;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    sget v0, Lc/d/a/a/i;->mtrl_picker_toggle_to_year_selection:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/d/a/a/v/f;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    sget v0, Lc/d/a/a/i;->mtrl_picker_toggle_to_day_selection:I

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/h/k/a0/b;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
