.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Landroid/widget/SeekBar;

.field public w:Landroid/widget/TextView;

.field public x:Z

.field public y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget v0, Lb/p/a;->seekBarPreferenceStyle:I

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v2, Landroidx/preference/SeekBarPreference$a;

    invoke-direct {v2, p0}, Landroidx/preference/SeekBarPreference$a;-><init>(Landroidx/preference/SeekBarPreference;)V

    new-instance v2, Landroidx/preference/SeekBarPreference$b;

    invoke-direct {v2, p0}, Landroidx/preference/SeekBarPreference$b;-><init>(Landroidx/preference/SeekBarPreference;)V

    sget-object v2, Lb/p/e;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lb/p/e;->SeekBarPreference_min:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->r:I

    sget p2, Lb/p/e;->SeekBarPreference_android_max:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->c(I)V

    sget p2, Lb/p/e;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->d(I)V

    sget p2, Lb/p/e;->SeekBarPreference_adjustable:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->x:Z

    sget p2, Lb/p/e;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    sget p2, Lb/p/e;->SeekBarPreference_updatesContinuously:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->y:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/widget/SeekBar;)V
    .locals 2

    iget v0, p0, Landroidx/preference/SeekBarPreference;->r:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/preference/SeekBarPreference;->q:I

    if-eq v1, v0, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1
    iget p1, p0, Landroidx/preference/SeekBarPreference;->r:I

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->s:I

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->q:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Landroidx/preference/SeekBarPreference;->q:I

    iget v0, p0, Landroidx/preference/SeekBarPreference;->q:I

    invoke-virtual {p0, v0}, Landroidx/preference/SeekBarPreference;->e(I)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->b(I)Z

    goto :goto_1

    .line 2
    :cond_2
    iget v0, p0, Landroidx/preference/SeekBarPreference;->q:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->r:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget p1, p0, Landroidx/preference/SeekBarPreference;->q:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->e(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final c(I)V
    .locals 1

    iget v0, p0, Landroidx/preference/SeekBarPreference;->r:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->s:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->s:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->m()V

    :cond_1
    return-void
.end method

.method public final d(I)V
    .locals 2

    iget v0, p0, Landroidx/preference/SeekBarPreference;->t:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Landroidx/preference/SeekBarPreference;->s:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->r:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->t:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->m()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
