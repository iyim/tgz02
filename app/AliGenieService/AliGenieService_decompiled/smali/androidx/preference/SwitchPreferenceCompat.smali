.class public Landroidx/preference/SwitchPreferenceCompat;
.super Landroidx/preference/TwoStatePreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SwitchPreferenceCompat$a;
    }
.end annotation


# instance fields
.field public final v:Landroidx/preference/SwitchPreferenceCompat$a;

.field public w:Ljava/lang/CharSequence;

.field public x:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget v0, Lb/p/a;->switchPreferenceCompatStyle:I

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v2, Landroidx/preference/SwitchPreferenceCompat$a;

    invoke-direct {v2, p0}, Landroidx/preference/SwitchPreferenceCompat$a;-><init>(Landroidx/preference/SwitchPreferenceCompat;)V

    iput-object v2, p0, Landroidx/preference/SwitchPreferenceCompat;->v:Landroidx/preference/SwitchPreferenceCompat$a;

    sget-object v2, Lb/p/e;->SwitchPreferenceCompat:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lb/p/e;->SwitchPreferenceCompat_summaryOn:I

    sget v0, Lb/p/e;->SwitchPreferenceCompat_android_summaryOn:I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->b(Ljava/lang/CharSequence;)V

    sget p2, Lb/p/e;->SwitchPreferenceCompat_summaryOff:I

    sget v0, Lb/p/e;->SwitchPreferenceCompat_android_summaryOff:I

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->a(Ljava/lang/CharSequence;)V

    sget p2, Lb/p/e;->SwitchPreferenceCompat_switchTextOn:I

    sget v0, Lb/p/e;->SwitchPreferenceCompat_android_switchTextOn:I

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/preference/SwitchPreferenceCompat;->d(Ljava/lang/CharSequence;)V

    sget p2, Lb/p/e;->SwitchPreferenceCompat_switchTextOff:I

    sget v0, Lb/p/e;->SwitchPreferenceCompat_android_switchTextOff:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/preference/SwitchPreferenceCompat;->c(Ljava/lang/CharSequence;)V

    sget p2, Lb/p/e;->SwitchPreferenceCompat_disableDependentsState:I

    sget v0, Lb/p/e;->SwitchPreferenceCompat_android_disableDependentsState:I

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 9
    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->g(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lb/p/b;->switchWidget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Landroidx/preference/TwoStatePreference;->q:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    if-eqz v1, :cond_3

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Landroidx/preference/SwitchPreferenceCompat;->w:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/preference/SwitchPreferenceCompat;->x:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/preference/SwitchPreferenceCompat;->v:Landroidx/preference/SwitchPreferenceCompat$a;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    const v0, 0x1020010

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->b(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/SwitchPreferenceCompat;->x:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->m()V

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/SwitchPreferenceCompat;->w:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->m()V

    return-void
.end method
