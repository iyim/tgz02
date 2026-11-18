.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$BaseSavedState;,
        Landroidx/preference/Preference$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Landroid/content/Context;

.field public c:I

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/String;

.field public g:Landroid/content/Intent;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public p:Landroidx/preference/Preference$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Lb/p/a;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/preference/Preference;->c:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/preference/Preference;->i:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->j:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->k:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->l:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->m:Z

    new-instance v2, Landroidx/preference/Preference$a;

    invoke-direct {v2, p0}, Landroidx/preference/Preference$a;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Landroidx/preference/Preference;->b:Landroid/content/Context;

    sget-object v2, Lb/p/e;->Preference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lb/p/e;->Preference_icon:I

    sget p3, Lb/p/e;->Preference_android_icon:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/res/TypedArray;III)I

    sget p2, Lb/p/e;->Preference_key:I

    sget p3, Lb/p/e;->Preference_android_key:I

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    iput-object p2, p0, Landroidx/preference/Preference;->f:Ljava/lang/String;

    sget p2, Lb/p/e;->Preference_title:I

    sget p3, Lb/p/e;->Preference_android_title:I

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5
    :cond_1
    iput-object p2, p0, Landroidx/preference/Preference;->d:Ljava/lang/CharSequence;

    sget p2, Lb/p/e;->Preference_summary:I

    sget p3, Lb/p/e;->Preference_android_summary:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 7
    :cond_2
    iput-object p2, p0, Landroidx/preference/Preference;->e:Ljava/lang/CharSequence;

    sget p2, Lb/p/e;->Preference_order:I

    sget p3, Lb/p/e;->Preference_android_order:I

    .line 8
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 9
    iput p2, p0, Landroidx/preference/Preference;->c:I

    sget p2, Lb/p/e;->Preference_fragment:I

    sget p3, Lb/p/e;->Preference_android_fragment:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 11
    :cond_3
    iput-object p2, p0, Landroidx/preference/Preference;->h:Ljava/lang/String;

    sget p2, Lb/p/e;->Preference_layout:I

    sget p3, Lb/p/e;->Preference_android_layout:I

    sget v0, Lb/p/c;->preference:I

    .line 12
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    sget p2, Lb/p/e;->Preference_widgetLayout:I

    sget p3, Lb/p/e;->Preference_android_widgetLayout:I

    .line 14
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 15
    sget p2, Lb/p/e;->Preference_enabled:I

    sget p3, Lb/p/e;->Preference_android_enabled:I

    .line 16
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 17
    iput-boolean p2, p0, Landroidx/preference/Preference;->i:Z

    sget p2, Lb/p/e;->Preference_selectable:I

    sget p3, Lb/p/e;->Preference_android_selectable:I

    .line 18
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 19
    iput-boolean p2, p0, Landroidx/preference/Preference;->j:Z

    sget p2, Lb/p/e;->Preference_persistent:I

    sget p3, Lb/p/e;->Preference_android_persistent:I

    .line 20
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 21
    iput-boolean p2, p0, Landroidx/preference/Preference;->k:Z

    sget p2, Lb/p/e;->Preference_dependency:I

    sget p3, Lb/p/e;->Preference_android_dependency:I

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 23
    :cond_4
    sget p2, Lb/p/e;->Preference_allowDividerAbove:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->j:Z

    .line 24
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    sget p2, Lb/p/e;->Preference_allowDividerBelow:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->j:Z

    .line 26
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 27
    sget p2, Lb/p/e;->Preference_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    sget p2, Lb/p/e;->Preference_defaultValue:I

    goto :goto_0

    :cond_5
    sget p2, Lb/p/e;->Preference_android_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lb/p/e;->Preference_android_defaultValue:I

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    :cond_6
    sget p2, Lb/p/e;->Preference_shouldDisableView:I

    sget p3, Lb/p/e;->Preference_android_shouldDisableView:I

    .line 28
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 29
    sget p2, Lb/p/e;->Preference_singleLineTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->n:Z

    iget-boolean p2, p0, Landroidx/preference/Preference;->n:Z

    if-eqz p2, :cond_7

    sget p2, Lb/p/e;->Preference_singleLineTitle:I

    sget p3, Lb/p/e;->Preference_android_singleLineTitle:I

    .line 30
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 31
    :cond_7
    sget p2, Lb/p/e;->Preference_iconSpaceReserved:I

    sget p3, Lb/p/e;->Preference_android_iconSpaceReserved:I

    .line 32
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 33
    sget p2, Lb/p/e;->Preference_isPreferenceVisible:I

    .line 34
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 35
    sget p2, Lb/p/e;->Preference_enableCopying:I

    .line 36
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Landroidx/preference/Preference;)I
    .locals 2

    iget v0, p0, Landroidx/preference/Preference;->c:I

    iget v1, p1, Landroidx/preference/Preference;->c:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->d:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->d:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/preference/Preference;->d:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->o()V

    return-void
.end method

.method public final a(Landroidx/preference/Preference$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/Preference;->p:Landroidx/preference/Preference$b;

    invoke-virtual {p0}, Landroidx/preference/Preference;->m()V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public a(Z)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    const/4 p1, 0x0

    throw p1
.end method

.method public b()Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->i()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public b(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/preference/Preference;->o:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p1}, Landroidx/preference/Preference;->c(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(I)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    not-int v0, p1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->l:Z

    if-ne v0, p1, :cond_0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/Preference;->l:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->b(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->m()V

    :cond_0
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public d()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public d(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->m:Z

    if-ne v0, p1, :cond_0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/Preference;->m:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->b(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->m()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(Z)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Z)Z

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    const/4 p1, 0x0

    throw p1
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->h()Landroidx/preference/Preference$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->h()Landroidx/preference/Preference$b;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$b;->a(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final h()Landroidx/preference/Preference$b;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->p:Landroidx/preference/Preference$b;

    return-object v0
.end method

.method public i()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->j:Z

    return v0
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->f()V

    iget-object v0, p0, Landroidx/preference/Preference;->g:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->g:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->k()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
