.class public final Lc/d/a/a/v/k;
.super Lb/k/d/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lb/k/d/b;"
    }
.end annotation


# static fields
.field public static final C0:Ljava/lang/Object;

.field public static final D0:Ljava/lang/Object;

.field public static final E0:Ljava/lang/Object;


# instance fields
.field public A0:Lc/d/a/a/f0/g;

.field public B0:Landroid/widget/Button;

.field public final l0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lc/d/a/a/v/m<",
            "-TS;>;>;"
        }
    .end annotation
.end field

.field public final m0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public final n0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field public final o0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field public p0:I

.field public q0:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field public r0:Lc/d/a/a/v/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/a/v/s<",
            "TS;>;"
        }
    .end annotation
.end field

.field public s0:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public t0:Lcom/google/android/material/datepicker/MaterialCalendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "TS;>;"
        }
    .end annotation
.end field

.field public u0:I

.field public v0:Ljava/lang/CharSequence;

.field public w0:Z

.field public x0:I

.field public y0:Landroid/widget/TextView;

.field public z0:Lcom/google/android/material/internal/CheckableImageButton;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CONFIRM_BUTTON_TAG"

    sput-object v0, Lc/d/a/a/v/k;->C0:Ljava/lang/Object;

    const-string v0, "CANCEL_BUTTON_TAG"

    sput-object v0, Lc/d/a/a/v/k;->D0:Ljava/lang/Object;

    const-string v0, "TOGGLE_BUTTON_TAG"

    sput-object v0, Lc/d/a/a/v/k;->E0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/k/d/b;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lc/d/a/a/v/k;->l0:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lc/d/a/a/v/k;->m0:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lc/d/a/a/v/k;->n0:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lc/d/a/a/v/k;->o0:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static L0()J
    .locals 2

    invoke-static {}, Lcom/google/android/material/datepicker/Month;->h()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->h:J

    return-wide v0
.end method

.method public static synthetic a(Lc/d/a/a/v/k;)V
    .locals 0

    invoke-virtual {p0}, Lc/d/a/a/v/k;->K0()V

    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lc/d/a/a/d;->mtrl_calendar_content_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {}, Lcom/google/android/material/datepicker/Month;->h()Lcom/google/android/material/datepicker/Month;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->f:I

    sget v2, Lc/d/a/a/d;->mtrl_calendar_day_width:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lc/d/a/a/d;->mtrl_calendar_month_horizontal_padding:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p0

    add-int/2addr v1, v2

    return v1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    sget v0, Lc/d/a/a/b;->materialCalendarStyle:I

    const-class v1, Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x101020d

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method


# virtual methods
.method public H0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lc/d/a/a/v/k;->q0:Lcom/google/android/material/datepicker/DateSelector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/datepicker/DateSelector;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final I0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/a/v/k;->q0:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final J0()V
    .locals 6

    iget-object v0, p0, Lc/d/a/a/v/k;->q0:Lcom/google/android/material/datepicker/DateSelector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A0()Landroid/content/Context;

    move-result-object v1

    .line 1
    iget v2, p0, Lc/d/a/a/v/k;->p0:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lc/d/a/a/v/k;->q0:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v2, v1}, Lcom/google/android/material/datepicker/DateSelector;->b(Landroid/content/Context;)I

    move-result v2

    .line 2
    :goto_0
    iget-object v1, p0, Lc/d/a/a/v/k;->s0:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3
    new-instance v3, Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {v3}, Lcom/google/android/material/datepicker/MaterialCalendar;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "THEME_RES_ID_KEY"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "GRID_SELECTOR_KEY"

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/CalendarConstraints;->h()Lcom/google/android/material/datepicker/Month;

    move-result-object v1

    const-string v2, "CURRENT_MONTH_KEY"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->k(Landroid/os/Bundle;)V

    .line 4
    iput-object v3, p0, Lc/d/a/a/v/k;->t0:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v1, p0, Lc/d/a/a/v/k;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/a/v/k;->q0:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v2, p0, Lc/d/a/a/v/k;->s0:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 5
    new-instance v3, Lc/d/a/a/v/n;

    invoke-direct {v3}, Lc/d/a/a/v/n;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "DATE_SELECTOR_KEY"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->k(Landroid/os/Bundle;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v3, p0, Lc/d/a/a/v/k;->t0:Lcom/google/android/material/datepicker/MaterialCalendar;

    :goto_1
    iput-object v3, p0, Lc/d/a/a/v/k;->r0:Lc/d/a/a/v/s;

    invoke-virtual {p0}, Lc/d/a/a/v/k;->K0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->m()Lb/k/d/p;

    move-result-object v0

    invoke-virtual {v0}, Lb/k/d/p;->a()Lb/k/d/v;

    move-result-object v0

    sget v1, Lc/d/a/a/f;->mtrl_calendar_frame:I

    iget-object v2, p0, Lc/d/a/a/v/k;->r0:Lc/d/a/a/v/s;

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, v4, v3}, Lb/k/d/v;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 8
    check-cast v0, Lb/k/d/a;

    .line 9
    iget-boolean v1, v0, Lb/k/d/v;->g:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/k/d/v;->h:Z

    .line 10
    iget-object v2, v0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v2, v0, v1}, Lb/k/d/p;->b(Lb/k/d/p$h;Z)V

    .line 11
    iget-object v0, p0, Lc/d/a/a/v/k;->r0:Lc/d/a/a/v/s;

    new-instance v1, Lc/d/a/a/v/k$c;

    invoke-direct {v1, p0}, Lc/d/a/a/v/k$c;-><init>(Lc/d/a/a/v/k;)V

    invoke-virtual {v0, v1}, Lc/d/a/a/v/s;->a(Lc/d/a/a/v/r;)Z

    return-void

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final K0()V
    .locals 5

    invoke-virtual {p0}, Lc/d/a/a/v/k;->H0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/a/v/k;->y0:Landroid/widget/TextView;

    sget v2, Lc/d/a/a/i;->mtrl_picker_announce_current_selection:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lc/d/a/a/v/k;->y0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    iget-boolean p3, p0, Lc/d/a/a/v/k;->w0:Z

    if-eqz p3, :cond_0

    sget p3, Lc/d/a/a/h;->mtrl_picker_fullscreen:I

    goto :goto_0

    :cond_0
    sget p3, Lc/d/a/a/h;->mtrl_picker_dialog:I

    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean p3, p0, Lc/d/a/a/v/k;->w0:Z

    if-eqz p3, :cond_1

    sget p3, Lc/d/a/a/f;->mtrl_calendar_frame:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, Lc/d/a/a/v/k;->b(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    sget p3, Lc/d/a/a/f;->mtrl_calendar_main_pane:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    sget v0, Lc/d/a/a/f;->mtrl_calendar_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, Lc/d/a/a/v/k;->b(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A0()Landroid/content/Context;

    move-result-object p3

    .line 1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lc/d/a/a/d;->mtrl_calendar_navigation_height:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lc/d/a/a/d;->mtrl_calendar_navigation_top_padding:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v1

    sget v1, Lc/d/a/a/d;->mtrl_calendar_navigation_bottom_padding:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v1, v2

    sget v2, Lc/d/a/a/d;->mtrl_calendar_days_of_week_height:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v4, Lc/d/a/a/v/o;->f:I

    sget v5, Lc/d/a/a/d;->mtrl_calendar_day_height:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/2addr v5, v4

    sget v4, Lc/d/a/a/v/o;->f:I

    add-int/2addr v4, v3

    sget v3, Lc/d/a/a/d;->mtrl_calendar_month_vertical_padding:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    mul-int/2addr v3, v4

    add-int/2addr v3, v5

    sget v4, Lc/d/a/a/d;->mtrl_calendar_bottom_padding:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_1
    sget p3, Lc/d/a/a/f;->mtrl_picker_header_selection_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lc/d/a/a/v/k;->y0:Landroid/widget/TextView;

    iget-object p3, p0, Lc/d/a/a/v/k;->y0:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lb/h/k/q;->e(Landroid/view/View;I)V

    sget p3, Lc/d/a/a/f;->mtrl_picker_header_toggle:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object p3, p0, Lc/d/a/a/v/k;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    sget p3, Lc/d/a/a/f;->mtrl_picker_title_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p0, Lc/d/a/a/v/k;->v0:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget v1, p0, Lc/d/a/a/v/k;->u0:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    :goto_2
    iget-object p3, p0, Lc/d/a/a/v/k;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    sget-object v1, Lc/d/a/a/v/k;->E0:Ljava/lang/Object;

    invoke-virtual {p3, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object p3, p0, Lc/d/a/a/v/k;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v2, v0, [I

    const v3, 0x10100a0

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lc/d/a/a/e;->material_ic_calendar_black_24dp:I

    invoke-static {p2, v3}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v4, [I

    sget v3, Lc/d/a/a/e;->material_ic_edit_black_24dp:I

    invoke-static {p2, v3}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p3, v1}, Lb/b/q/k;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lc/d/a/a/v/k;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    iget p3, p0, Lc/d/a/a/v/k;->x0:I

    if-eqz p3, :cond_3

    move p3, v0

    goto :goto_3

    :cond_3
    move p3, v4

    :goto_3
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p2, p0, Lc/d/a/a/v/k;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lb/h/k/q;->a(Landroid/view/View;Lb/h/k/a;)V

    iget-object p2, p0, Lc/d/a/a/v/k;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p2}, Lc/d/a/a/v/k;->a(Lcom/google/android/material/internal/CheckableImageButton;)V

    iget-object p2, p0, Lc/d/a/a/v/k;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance p3, Lc/d/a/a/v/l;

    invoke-direct {p3, p0}, Lc/d/a/a/v/l;-><init>(Lc/d/a/a/v/k;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget p2, Lc/d/a/a/f;->confirm_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lc/d/a/a/v/k;->B0:Landroid/widget/Button;

    iget-object p2, p0, Lc/d/a/a/v/k;->q0:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lc/d/a/a/v/k;->B0:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lc/d/a/a/v/k;->B0:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_4
    iget-object p2, p0, Lc/d/a/a/v/k;->B0:Landroid/widget/Button;

    sget-object p3, Lc/d/a/a/v/k;->C0:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lc/d/a/a/v/k;->B0:Landroid/widget/Button;

    new-instance p3, Lc/d/a/a/v/k$a;

    invoke-direct {p3, p0}, Lc/d/a/a/v/k$a;-><init>(Lc/d/a/a/v/k;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lc/d/a/a/f;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    sget-object p3, Lc/d/a/a/v/k;->D0:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance p3, Lc/d/a/a/v/k$b;

    invoke-direct {p3, p0}, Lc/d/a/a/v/k$b;-><init>(Lc/d/a/a/v/k;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final a(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/a/v/k;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz v0, :cond_0

    sget v0, Lc/d/a/a/i;->mtrl_picker_toggle_to_calendar_input_mode:I

    goto :goto_0

    :cond_0
    sget v0, Lc/d/a/a/i;->mtrl_picker_toggle_to_text_input_mode:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/a/v/k;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lb/k/d/b;->b(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/d/a/a/v/k;->p0:I

    const-string v0, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v0, p0, Lc/d/a/a/v/k;->q0:Lcom/google/android/material/datepicker/DateSelector;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v0, p0, Lc/d/a/a/v/k;->s0:Lcom/google/android/material/datepicker/CalendarConstraints;

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/d/a/a/v/k;->u0:I

    const-string v0, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/v/k;->v0:Ljava/lang/CharSequence;

    const-string v0, "INPUT_MODE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lc/d/a/a/v/k;->x0:I

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lb/k/d/b;->d(Landroid/os/Bundle;)V

    iget v0, p0, Lc/d/a/a/v/k;->p0:I

    const-string v1, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lc/d/a/a/v/k;->q0:Lcom/google/android/material/datepicker/DateSelector;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/google/android/material/datepicker/CalendarConstraints$b;

    iget-object v1, p0, Lc/d/a/a/v/k;->s0:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/CalendarConstraints$b;-><init>(Lcom/google/android/material/datepicker/CalendarConstraints;)V

    iget-object v1, p0, Lc/d/a/a/v/k;->t0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->G0()Lcom/google/android/material/datepicker/Month;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/d/a/a/v/k;->t0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->G0()Lcom/google/android/material/datepicker/Month;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/material/datepicker/Month;->h:J

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/datepicker/CalendarConstraints$b;->c:Ljava/lang/Long;

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/datepicker/CalendarConstraints$b;->c:Ljava/lang/Long;

    if-nez v1, :cond_2

    invoke-static {}, Lc/d/a/a/v/k;->L0()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/material/datepicker/CalendarConstraints$b;->a:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    iget-wide v3, v0, Lcom/google/android/material/datepicker/CalendarConstraints$b;->b:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, v0, Lcom/google/android/material/datepicker/CalendarConstraints$b;->a:J

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/datepicker/CalendarConstraints$b;->c:Ljava/lang/Long;

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lcom/google/android/material/datepicker/CalendarConstraints$b;->d:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    const-string v3, "DEEP_COPY_VALIDATOR_KEY"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v2, Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-wide v4, v0, Lcom/google/android/material/datepicker/CalendarConstraints$b;->a:J

    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/Month;->c(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v5

    iget-wide v6, v0, Lcom/google/android/material/datepicker/CalendarConstraints$b;->b:J

    invoke-static {v6, v7}, Lcom/google/android/material/datepicker/Month;->c(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v6

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints$b;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/material/datepicker/Month;->c(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v7

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/CalendarConstraints$a;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 3
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v0, p0, Lc/d/a/a/v/k;->u0:I

    const-string v1, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lc/d/a/a/v/k;->v0:Ljava/lang/CharSequence;

    const-string v1, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A0()Landroid/content/Context;

    move-result-object v1

    .line 1
    iget v2, p0, Lc/d/a/a/v/k;->p0:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lc/d/a/a/v/k;->q0:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v2, v1}, Lcom/google/android/material/datepicker/DateSelector;->b(Landroid/content/Context;)I

    move-result v2

    .line 2
    :goto_0
    invoke-direct {p1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/a/v/k;->c(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lc/d/a/a/v/k;->w0:Z

    sget v1, Lc/d/a/a/b;->colorSurface:I

    const-class v2, Lc/d/a/a/v/k;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    new-instance v2, Lc/d/a/a/f0/g;

    sget v3, Lc/d/a/a/b;->materialCalendarStyle:I

    sget v4, Lc/d/a/a/j;->Widget_MaterialComponents_MaterialCalendar:I

    const/4 v5, 0x0

    .line 3
    invoke-static {v0, v5, v3, v4}, Lc/d/a/a/f0/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lc/d/a/a/f0/k$b;

    move-result-object v3

    invoke-virtual {v3}, Lc/d/a/a/f0/k$b;->a()Lc/d/a/a/f0/k;

    move-result-object v3

    invoke-direct {v2, v3}, Lc/d/a/a/f0/g;-><init>(Lc/d/a/a/f0/k;)V

    .line 4
    iput-object v2, p0, Lc/d/a/a/v/k;->A0:Lc/d/a/a/f0/g;

    iget-object v2, p0, Lc/d/a/a/v/k;->A0:Lc/d/a/a/f0/g;

    .line 5
    iget-object v3, v2, Lc/d/a/a/f0/g;->b:Lc/d/a/a/f0/g$b;

    new-instance v4, Lc/d/a/a/x/a;

    invoke-direct {v4, v0}, Lc/d/a/a/x/a;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lc/d/a/a/f0/g$b;->b:Lc/d/a/a/x/a;

    invoke-virtual {v2}, Lc/d/a/a/f0/g;->i()V

    .line 6
    iget-object v0, p0, Lc/d/a/a/v/k;->A0:Lc/d/a/a/f0/g;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/a/f0/g;->a(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lc/d/a/a/v/k;->A0:Lc/d/a/a/f0/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lb/h/k/q;->i(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Lc/d/a/a/f0/g;->a(F)V

    return-object p1
.end method

.method public m0()V
    .locals 9

    invoke-super {p0}, Lb/k/d/b;->m0()V

    invoke-virtual {p0}, Lb/k/d/b;->G0()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lc/d/a/a/v/k;->w0:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    iget-object v1, p0, Lc/d/a/a/v/k;->A0:Lc/d/a/a/f0/g;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lc/d/a/a/d;->mtrl_calendar_dialog_background_inset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lc/d/a/a/v/k;->A0:Lc/d/a/a/f0/g;

    move-object v3, v2

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lc/d/a/a/w/a;

    invoke-virtual {p0}, Lb/k/d/b;->G0()Landroid/app/Dialog;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lc/d/a/a/w/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    invoke-virtual {p0}, Lc/d/a/a/v/k;->J0()V

    return-void
.end method

.method public n0()V
    .locals 1

    iget-object v0, p0, Lc/d/a/a/v/k;->r0:Lc/d/a/a/v/s;

    invoke-virtual {v0}, Lc/d/a/a/v/s;->D0()V

    invoke-super {p0}, Lb/k/d/b;->n0()V

    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/v/k;->n0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/v/k;->o0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->I()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1
    :cond_1
    iget-boolean p1, p0, Lb/k/d/b;->i0:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lb/k/d/b;->a(ZZ)V

    :cond_2
    return-void
.end method
