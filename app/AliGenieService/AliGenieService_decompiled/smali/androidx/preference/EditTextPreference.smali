.class public Landroidx/preference/EditTextPreference;
.super Landroidx/preference/DialogPreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/EditTextPreference$a;,
        Landroidx/preference/EditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget v0, Lb/p/a;->editTextPreferenceStyle:I

    const v1, 0x1010092

    invoke-static {p1, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v2, Lb/p/e;->EditTextPreference:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lb/p/e;->EditTextPreference_useSimpleSummaryProvider:I

    invoke-static {p1, p2, p2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    sget-object p2, Landroidx/preference/EditTextPreference$a;->a:Landroidx/preference/EditTextPreference$a;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/preference/EditTextPreference$a;

    invoke-direct {p2}, Landroidx/preference/EditTextPreference$a;-><init>()V

    sput-object p2, Landroidx/preference/EditTextPreference$a;->a:Landroidx/preference/EditTextPreference$a;

    :cond_0
    sget-object p2, Landroidx/preference/EditTextPreference$a;->a:Landroidx/preference/EditTextPreference$a;

    .line 3
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$b;)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/EditTextPreference;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/preference/Preference;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/preference/EditTextPreference;->r:Ljava/lang/String;

    return-object v0
.end method
