.class public Landroidx/preference/DropDownPreference;
.super Landroidx/preference/ListPreference;
.source ""


# instance fields
.field public final w:Landroid/content/Context;

.field public final x:Landroid/widget/ArrayAdapter;

.field public y:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget v0, Lb/p/a;->dropdownPreferenceStyle:I

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroidx/preference/DropDownPreference$a;

    invoke-direct {p2, p0}, Landroidx/preference/DropDownPreference$a;-><init>(Landroidx/preference/DropDownPreference;)V

    iput-object p1, p0, Landroidx/preference/DropDownPreference;->w:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/preference/DropDownPreference;->v()Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/DropDownPreference;->x:Landroid/widget/ArrayAdapter;

    .line 2
    iget-object p1, p0, Landroidx/preference/DropDownPreference;->x:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->r()[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->r()[Ljava/lang/CharSequence;

    move-result-object p1

    array-length p2, p1

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v0, p1, v1

    iget-object v2, p0, Landroidx/preference/DropDownPreference;->x:Landroid/widget/ArrayAdapter;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public m()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->x:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->y:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method

.method public v()Landroid/widget/ArrayAdapter;
    .locals 3

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->w:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
