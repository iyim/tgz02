.class public Lcom/google/android/material/datepicker/SingleDateSelector$a;
.super Lc/d/a/a/v/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/SingleDateSelector;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lc/d/a/a/v/r;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lc/d/a/a/v/r;

.field public final synthetic h:Lcom/google/android/material/datepicker/SingleDateSelector;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lc/d/a/a/v/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$a;->h:Lcom/google/android/material/datepicker/SingleDateSelector;

    iput-object p6, p0, Lcom/google/android/material/datepicker/SingleDateSelector$a;->g:Lc/d/a/a/v/r;

    invoke-direct {p0, p2, p3, p4, p5}, Lc/d/a/a/v/c;-><init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector$a;->g:Lc/d/a/a/v/r;

    invoke-virtual {v0}, Lc/d/a/a/v/r;->a()V

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$a;->h:Lcom/google/android/material/datepicker/SingleDateSelector;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector$a;->h:Lcom/google/android/material/datepicker/SingleDateSelector;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/datepicker/SingleDateSelector;->b(J)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$a;->g:Lc/d/a/a/v/r;

    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector$a;->h:Lcom/google/android/material/datepicker/SingleDateSelector;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/SingleDateSelector;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/d/a/a/v/r;->a(Ljava/lang/Object;)V

    return-void
.end method
