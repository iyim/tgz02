.class public final Lc/d/a/a/v/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/a/a/v/a;

.field public final b:Lc/d/a/a/v/a;

.field public final c:Lc/d/a/a/v/a;

.field public final d:Lc/d/a/a/v/a;

.field public final e:Lc/d/a/a/v/a;

.field public final f:Lc/d/a/a/v/a;

.field public final g:Lc/d/a/a/v/a;

.field public final h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lc/d/a/a/b;->materialCalendarStyle:I

    const-class v1, Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    sget-object v1, Lc/d/a/a/k;->MaterialCalendar:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lc/d/a/a/k;->MaterialCalendar_dayStyle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lc/d/a/a/v/a;->a(Landroid/content/Context;I)Lc/d/a/a/v/a;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/a/v/b;->a:Lc/d/a/a/v/a;

    sget v1, Lc/d/a/a/k;->MaterialCalendar_dayInvalidStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lc/d/a/a/v/a;->a(Landroid/content/Context;I)Lc/d/a/a/v/a;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/a/v/b;->g:Lc/d/a/a/v/a;

    sget v1, Lc/d/a/a/k;->MaterialCalendar_daySelectedStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lc/d/a/a/v/a;->a(Landroid/content/Context;I)Lc/d/a/a/v/a;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/a/v/b;->b:Lc/d/a/a/v/a;

    sget v1, Lc/d/a/a/k;->MaterialCalendar_dayTodayStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lc/d/a/a/v/a;->a(Landroid/content/Context;I)Lc/d/a/a/v/a;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/a/v/b;->c:Lc/d/a/a/v/a;

    sget v1, Lc/d/a/a/k;->MaterialCalendar_rangeFillColor:I

    invoke-static {p1, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sget v3, Lc/d/a/a/k;->MaterialCalendar_yearStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Lc/d/a/a/v/a;->a(Landroid/content/Context;I)Lc/d/a/a/v/a;

    move-result-object v3

    iput-object v3, p0, Lc/d/a/a/v/b;->d:Lc/d/a/a/v/a;

    sget v3, Lc/d/a/a/k;->MaterialCalendar_yearSelectedStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Lc/d/a/a/v/a;->a(Landroid/content/Context;I)Lc/d/a/a/v/a;

    move-result-object v3

    iput-object v3, p0, Lc/d/a/a/v/b;->e:Lc/d/a/a/v/a;

    sget v3, Lc/d/a/a/k;->MaterialCalendar_yearTodayStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Lc/d/a/a/v/a;->a(Landroid/content/Context;I)Lc/d/a/a/v/a;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/a/v/b;->f:Lc/d/a/a/v/a;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lc/d/a/a/v/b;->h:Landroid/graphics/Paint;

    iget-object p1, p0, Lc/d/a/a/v/b;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
