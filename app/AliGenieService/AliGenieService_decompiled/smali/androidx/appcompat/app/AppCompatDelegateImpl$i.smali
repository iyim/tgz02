.class public Landroidx/appcompat/app/AppCompatDelegateImpl$i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public static a(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    return p2
.end method

.method public static a(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    float-to-double p0, p2

    float-to-double p2, p3

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static a(I)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a(II)I
    .locals 0

    or-int/2addr p0, p1

    const p1, 0x100111

    and-int/2addr p0, p1

    return p0
.end method

.method public static a(IIF)I
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Lb/h/e/a;->b(II)I

    move-result p1

    .line 69
    invoke-static {p1, p0}, Lb/h/e/a;->a(II)I

    move-result p0

    return p0
.end method

.method public static a(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;II)I
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p0, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)I
    .locals 3

    invoke-static {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p2

    const-string p0, "%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    :cond_1
    move v3, v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_4

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v2, v1

    if-gtz v2, :cond_3

    goto :goto_0

    :cond_3
    aget-object v2, v1, v0

    .line 32
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v3, -0x2

    :cond_5
    :goto_0
    return v3
.end method

.method public static a(Landroid/content/res/TypedArray;III)I
    .locals 0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public static a(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 3

    const-string v0, "getClientPid"

    invoke-static {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/media/AudioPlaybackConfiguration;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "exception getClientPid: "

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IC"

    invoke-static {v2, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static a(Landroid/view/View;I)I
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p0

    return p0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$y;Lb/q/d/q;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$n;Z)I
    .locals 1

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$n;->e()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->a()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->l(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->l(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Lb/q/d/q;->a(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p2}, Lb/q/d/q;->d(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Lb/q/d/q;->g()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$y;Lb/q/d/q;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$n;ZZ)I
    .locals 4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$n;->e()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->a()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->l(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->l(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->l(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->l(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p6, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->a()I

    move-result p0

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_2

    return p0

    :cond_2
    invoke-virtual {p1, p3}, Lb/q/d/q;->a(Landroid/view/View;)I

    move-result p5

    invoke-virtual {p1, p2}, Lb/q/d/q;->d(Landroid/view/View;)I

    move-result p6

    sub-int/2addr p5, p6

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->l(Landroid/view/View;)I

    move-result p6

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->l(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p6, p3

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p5

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float/2addr p0, p4

    invoke-virtual {p1}, Lb/q/d/q;->f()I

    move-result p3

    invoke-virtual {p1, p2}, Lb/q/d/q;->d(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static varargs a([Ljava/lang/Object;)I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;IIII)Landroid/accessibilityservice/GestureDescription;
    .locals 17

    move/from16 v0, p3

    move/from16 v1, p4

    const/4 v2, 0x2

    new-array v3, v2, [F

    new-array v4, v2, [F

    new-array v5, v2, [F

    new-array v6, v2, [F

    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    const/4 v8, 0x0

    aput v7, v3, v8

    const/4 v7, 0x1

    const/4 v9, 0x0

    aput v9, v3, v7

    div-int/lit8 v10, v1, 0x2

    int-to-float v10, v10

    aput v10, v4, v8

    aput v9, v4, v7

    neg-int v0, v0

    div-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v5, v8

    aput v9, v5, v7

    neg-int v0, v1

    div-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v6, v8

    aput v9, v6, v7

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v1, p1

    int-to-float v1, v1

    move/from16 v10, p2

    int-to-float v10, v10

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    aget v1, v3, v8

    cmpg-float v1, v1, v9

    if-gez v1, :cond_0

    aput v9, v3, v8

    goto :goto_0

    :cond_0
    aget v1, v3, v8

    iget v10, v0, Landroid/graphics/Point;->y:I

    int-to-float v11, v10

    cmpl-float v1, v1, v11

    if-ltz v1, :cond_1

    int-to-float v1, v10

    aput v1, v3, v8

    :cond_1
    :goto_0
    aget v1, v3, v7

    cmpg-float v1, v1, v9

    if-gez v1, :cond_2

    aput v9, v3, v7

    goto :goto_1

    :cond_2
    aget v1, v3, v7

    iget v10, v0, Landroid/graphics/Point;->x:I

    int-to-float v11, v10

    cmpl-float v1, v1, v11

    if-ltz v1, :cond_3

    int-to-float v1, v10

    aput v1, v3, v7

    :cond_3
    :goto_1
    aget v1, v4, v8

    cmpg-float v1, v1, v9

    if-gez v1, :cond_4

    aput v9, v4, v8

    goto :goto_2

    :cond_4
    aget v1, v4, v8

    iget v10, v0, Landroid/graphics/Point;->y:I

    int-to-float v11, v10

    cmpl-float v1, v1, v11

    if-ltz v1, :cond_5

    int-to-float v1, v10

    aput v1, v4, v8

    :cond_5
    :goto_2
    aget v1, v4, v8

    cmpg-float v1, v1, v9

    if-gez v1, :cond_6

    aput v9, v4, v8

    goto :goto_3

    :cond_6
    aget v1, v4, v8

    iget v10, v0, Landroid/graphics/Point;->y:I

    int-to-float v11, v10

    cmpl-float v1, v1, v11

    if-ltz v1, :cond_7

    int-to-float v1, v10

    aput v1, v4, v8

    :cond_7
    :goto_3
    aget v1, v5, v8

    cmpg-float v1, v1, v9

    if-gez v1, :cond_8

    aput v9, v5, v8

    goto :goto_4

    :cond_8
    aget v1, v5, v8

    iget v10, v0, Landroid/graphics/Point;->y:I

    int-to-float v11, v10

    cmpl-float v1, v1, v11

    if-ltz v1, :cond_9

    int-to-float v1, v10

    aput v1, v5, v8

    :cond_9
    :goto_4
    aget v1, v5, v7

    cmpg-float v1, v1, v9

    if-gez v1, :cond_a

    aput v9, v5, v7

    goto :goto_5

    :cond_a
    aget v1, v5, v7

    iget v10, v0, Landroid/graphics/Point;->x:I

    int-to-float v11, v10

    cmpl-float v1, v1, v11

    if-ltz v1, :cond_b

    int-to-float v1, v10

    aput v1, v5, v7

    :cond_b
    :goto_5
    aget v1, v6, v8

    cmpg-float v1, v1, v9

    if-gez v1, :cond_c

    aput v9, v6, v8

    goto :goto_6

    :cond_c
    aget v1, v6, v8

    iget v10, v0, Landroid/graphics/Point;->y:I

    int-to-float v11, v10

    cmpl-float v1, v1, v11

    if-ltz v1, :cond_d

    int-to-float v1, v10

    aput v1, v6, v8

    :cond_d
    :goto_6
    aget v1, v6, v8

    cmpg-float v1, v1, v9

    if-gez v1, :cond_e

    aput v9, v6, v8

    goto :goto_7

    :cond_e
    aget v1, v6, v8

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v9, v0

    cmpl-float v1, v1, v9

    if-ltz v1, :cond_f

    int-to-float v0, v0

    aput v0, v6, v8

    :cond_f
    :goto_7
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    aget v0, v3, v8

    aget v1, v3, v7

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    aget v0, v4, v8

    aget v1, v4, v7

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    aget v1, v5, v8

    aget v3, v5, v7

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    aget v1, v6, v8

    aget v3, v6, v7

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    new-array v1, v2, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    new-instance v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x190

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x190

    move-object v11, v2

    move-object v12, v0

    invoke-direct/range {v11 .. v16}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    aput-object v2, v1, v7

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription;
    .locals 4

    new-instance v0, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lc/d/a/a/u/d;FFF)Landroid/animation/Animator;
    .locals 6

    sget-object v0, Lc/d/a/a/u/d$c;->a:Landroid/util/Property;

    sget-object v1, Lc/d/a/a/u/d$b;->b:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x1

    new-array v3, v2, [Lc/d/a/a/u/d$e;

    new-instance v4, Lc/d/a/a/u/d$e;

    invoke-direct {v4, p1, p2, p3}, Lc/d/a/a/u/d$e;-><init>(FFF)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p0, v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {p0}, Lc/d/a/a/u/d;->getRevealInfo()Lc/d/a/a/u/d$e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Lc/d/a/a/u/d$e;->c:F

    check-cast p0, Landroid/view/View;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-static {p0, p1, p2, v1, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v0, p2, v5

    aput-object p0, p2, v2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Caller must set a non-null RevealInfo before calling this."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 67
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_1
    invoke-static {p0, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in manifest"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception p0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lb/b/l/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lb/b/q/w0;I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 58
    iget-object v0, p1, Lb/b/q/w0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    iget-object v1, p1, Lb/b/q/w0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0, v0}, Lb/b/l/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p2}, Lb/b/q/w0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return-object p1

    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILandroid/util/TypedValue;ILb/h/d/b/e;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 16

    move/from16 v9, p1

    move-object/from16 v0, p2

    move/from16 v5, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v1, 0x1

    invoke-virtual {v3, v9, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const-string v12, "ResourcesCompat"

    .line 72
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v0, "res/"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v14, 0x0

    const/4 v15, -0x3

    if-nez v0, :cond_0

    if-eqz v10, :cond_6

    goto/16 :goto_2

    .line 73
    :cond_0
    sget-object v0, Lb/h/e/c;->b:Lb/e/f;

    invoke-static {v3, v9, v5}, Lb/h/e/c;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/e/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    if-eqz v10, :cond_1

    .line 74
    invoke-virtual {v10, v0, v11}, Lb/h/d/b/e;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    move-object v14, v0

    goto/16 :goto_3

    :cond_2
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lb/h/d/b/a;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, "Failed to find font-family tag"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_6

    invoke-virtual {v10, v15, v11}, Lb/h/d/b/e;->a(ILandroid/os/Handler;)V

    goto :goto_3

    :cond_3
    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v1 .. v8}, Lb/h/e/c;->a(Landroid/content/Context;Lb/h/d/b/a;Landroid/content/res/Resources;IILb/h/d/b/e;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v14

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v3, v9, v13, v5}, Lb/h/e/c;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v10, :cond_1

    if-eqz v0, :cond_5

    invoke-virtual {v10, v0, v11}, Lb/h/d/b/e;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v10, v15, v11}, Lb/h/d/b/e;->a(ILandroid/os/Handler;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read xml resource "

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse xml resource "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v10, :cond_6

    :goto_2
    invoke-virtual {v10, v15, v11}, Lb/h/d/b/e;->a(ILandroid/os/Handler;)V

    :cond_6
    :goto_3
    if-nez v14, :cond_8

    if-eqz v10, :cond_7

    goto :goto_4

    .line 75
    :cond_7
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    const-string v1, "Font resource ID #0x"

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be retrieved."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    return-object v14

    .line 76
    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    const-string v2, "Resource \""

    invoke-static {v2}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is not a Font: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;I)Landroid/util/TypedValue;
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_1

    instance-of v0, p1, Lb/h/l/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lb/h/l/d;

    invoke-direct {v0, p1, p0}, Lb/h/l/d;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    if-eqz p0, :cond_1

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lb/b/q/b1;

    if-eqz v0, :cond_0

    check-cast p2, Lb/b/q/b1;

    invoke-interface {p2}, Lb/b/q/b1;->a()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static a(Landroid/view/View;)Landroidx/navigation/NavController;
    .locals 4

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 54
    sget v2, Lb/o/s;->nav_controller_view_tag:I

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroidx/navigation/NavController;

    if-eqz v3, :cond_1

    :goto_1
    check-cast v2, Landroidx/navigation/NavController;

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_2

    move-object v1, v2

    goto :goto_3

    .line 55
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    return-object v1

    .line 56
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a NavController set"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Lb/f/b/g/j/m;)Lb/f/b/g/j/m;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "I",
            "Ljava/util/ArrayList<",
            "Lb/f/b/g/j/m;",
            ">;",
            "Lb/f/b/g/j/m;",
            ")",
            "Lb/f/b/g/j/m;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m0:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n0:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    iget v3, p3, Lb/f/b/g/j/m;->b:I

    if-eq v0, v3, :cond_4

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/f/b/g/j/m;

    .line 41
    iget v5, v4, Lb/f/b/g/j/m;->b:I

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    .line 42
    invoke-virtual {p3, p1, v4}, Lb/f/b/g/j/m;->a(ILb/f/b/g/j/m;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    if-nez p3, :cond_c

    instance-of v3, p0, Lb/f/b/g/f;

    if-eqz v3, :cond_a

    move-object v3, p0

    check-cast v3, Lb/f/b/g/f;

    move v4, v1

    .line 43
    :goto_3
    iget v5, v3, Lb/f/b/g/f;->q0:I

    if-ge v4, v5, :cond_8

    iget-object v5, v3, Lb/f/b/g/f;->p0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v4

    if-nez p1, :cond_6

    iget v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m0:I

    if-eq v6, v2, :cond_6

    move v5, v6

    goto :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n0:I

    if-eq v5, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move v5, v2

    :goto_4
    if-eq v5, v2, :cond_a

    move v2, v1

    .line 44
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/f/b/g/j/m;

    .line 45
    iget v4, v3, Lb/f/b/g/j/m;->b:I

    if-ne v4, v5, :cond_9

    move-object p3, v3

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez p3, :cond_b

    .line 46
    new-instance p3, Lb/f/b/g/j/m;

    invoke-direct {p3, p1}, Lb/f/b/g/j/m;-><init>(I)V

    :cond_b
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {p3, p0}, Lb/f/b/g/j/m;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v2

    if-eqz v2, :cond_10

    instance-of v2, p0, Lb/f/b/g/d;

    if-eqz v2, :cond_e

    move-object v2, p0

    check-cast v2, Lb/f/b/g/d;

    .line 47
    iget-object v3, v2, Lb/f/b/g/d;->s0:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 48
    iget v2, v2, Lb/f/b/g/d;->t0:I

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    move v0, v1

    .line 49
    :goto_7
    invoke-virtual {v3, v0, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(ILjava/util/ArrayList;Lb/f/b/g/j/m;)V

    :cond_e
    if-nez p1, :cond_f

    .line 50
    iget v0, p3, Lb/f/b/g/j/m;->b:I

    .line 51
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m0:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(ILjava/util/ArrayList;Lb/f/b/g/j/m;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto :goto_8

    .line 52
    :cond_f
    iget v0, p3, Lb/f/b/g/j/m;->b:I

    .line 53
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n0:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(ILjava/util/ArrayList;Lb/f/b/g/j/m;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(ILjava/util/ArrayList;Lb/f/b/g/j/m;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    :goto_8
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(ILjava/util/ArrayList;Lb/f/b/g/j/m;)V

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(ILjava/util/ArrayList;Lb/f/b/g/j/m;)V

    :cond_10
    return-object p3
.end method

.method public static a(Ljava/util/ArrayList;I)Lb/f/b/g/j/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/f/b/g/j/m;",
            ">;I)",
            "Lb/f/b/g/j/m;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/b/g/j/m;

    iget v3, v2, Lb/f/b/g/j/m;->b:I

    if-ne p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lb/h/d/b/a;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_f

    const-string v1, "font-family"

    const/4 v4, 0x0

    move-object/from16 v5, p0

    .line 94
    invoke-interface {v5, v3, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 95
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v6, Lb/h/b;->FontFamily:[I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v6, Lb/h/b;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lb/h/b;->FontFamily_fontProviderPackage:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lb/h/b;->FontFamily_fontProviderQuery:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lb/h/b;->FontFamily_fontProviderCerts:I

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    sget v11, Lb/h/b;->FontFamily_fontProviderFetchStrategy:I

    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    sget v12, Lb/h/b;->FontFamily_fontProviderFetchTimeout:I

    const/16 v13, 0x1f4

    invoke-virtual {v1, v12, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x3

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_1
    invoke-static {v0, v9}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v0

    new-instance v4, Lb/h/d/b/d;

    new-instance v1, Lb/h/h/a;

    invoke-direct {v1, v6, v7, v8, v0}, Lb/h/h/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v4, v1, v11, v12}, Lb/h/d/b/d;-><init>(Lb/h/h/a;II)V

    goto/16 :goto_a

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v1, :cond_c

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "font"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 96
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    sget-object v8, Lb/h/b;->FontFamilyFont:[I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    sget v8, Lb/h/b;->FontFamilyFont_fontWeight:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_4

    sget v8, Lb/h/b;->FontFamilyFont_fontWeight:I

    goto :goto_3

    :cond_4
    sget v8, Lb/h/b;->FontFamilyFont_android_fontWeight:I

    :goto_3
    const/16 v9, 0x190

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    sget v8, Lb/h/b;->FontFamilyFont_fontStyle:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_5

    sget v8, Lb/h/b;->FontFamilyFont_fontStyle:I

    goto :goto_4

    :cond_5
    sget v8, Lb/h/b;->FontFamilyFont_android_fontStyle:I

    :goto_4
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-ne v2, v8, :cond_6

    move v14, v2

    goto :goto_5

    :cond_6
    move v14, v10

    :goto_5
    sget v8, Lb/h/b;->FontFamilyFont_ttcIndex:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_7

    sget v8, Lb/h/b;->FontFamilyFont_ttcIndex:I

    goto :goto_6

    :cond_7
    sget v8, Lb/h/b;->FontFamilyFont_android_ttcIndex:I

    :goto_6
    sget v9, Lb/h/b;->FontFamilyFont_fontVariationSettings:I

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_8

    sget v9, Lb/h/b;->FontFamilyFont_fontVariationSettings:I

    goto :goto_7

    :cond_8
    sget v9, Lb/h/b;->FontFamilyFont_android_fontVariationSettings:I

    :goto_7
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    sget v8, Lb/h/b;->FontFamilyFont_font:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_9

    sget v8, Lb/h/b;->FontFamilyFont_font:I

    goto :goto_8

    :cond_9
    sget v8, Lb/h/b;->FontFamilyFont_android_font:I

    :goto_8
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :goto_9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v1, :cond_a

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    :cond_a
    new-instance v7, Lb/h/d/b/c;

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Lb/h/d/b/c;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    .line 97
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    :cond_c
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    new-instance v4, Lb/h/d/b/b;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lb/h/d/b/c;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/h/d/b/c;

    invoke-direct {v4, v0}, Lb/h/d/b/b;-><init>([Lb/h/d/b/c;)V

    goto :goto_a

    .line 98
    :cond_e
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_a
    return-object v4

    .line 99
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Lb/k/d/i;Landroidx/fragment/app/Fragment;Z)Lb/k/d/g;
    .locals 5

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->w()I

    move-result v0

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->v()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/fragment/app/Fragment;->b(I)V

    iget v3, p2, Landroidx/fragment/app/Fragment;->x:I

    invoke-virtual {p1, v3}, Lb/k/d/i;->a(I)Landroid/view/View;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    sget v4, Lb/k/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    sget v4, Lb/k/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p2, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->V()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p0, Lb/k/d/g;

    invoke-direct {p0, p1}, Lb/k/d/g;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->W()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p0, Lb/k/d/g;

    invoke-direct {p0, p1}, Lb/k/d/g;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_3
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :try_start_0
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v4, Lb/k/d/g;

    invoke-direct {v4, p2}, Lb/k/d/g;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v4

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_5
    :goto_0
    if-nez v2, :cond_7

    :try_start_1
    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v2, Lb/k/d/g;

    invoke-direct {v2, p2}, Lb/k/d/g;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    :catch_2
    move-exception p2

    if-nez p1, :cond_6

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p0, Lb/k/d/g;

    invoke-direct {p0, p1}, Lb/k/d/g;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    :cond_6
    throw p2

    :cond_7
    if-nez v0, :cond_8

    return-object v3

    :cond_8
    const/16 p1, 0x1001

    if-eq v0, p1, :cond_d

    const/16 p1, 0x1003

    if-eq v0, p1, :cond_b

    const/16 p1, 0x2002

    if-eq v0, p1, :cond_9

    const/4 p1, -0x1

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_a

    .line 70
    sget p1, Lb/k/a;->fragment_close_enter:I

    goto :goto_1

    :cond_a
    sget p1, Lb/k/a;->fragment_close_exit:I

    goto :goto_1

    :cond_b
    if-eqz p3, :cond_c

    sget p1, Lb/k/a;->fragment_fade_enter:I

    goto :goto_1

    :cond_c
    sget p1, Lb/k/a;->fragment_fade_exit:I

    goto :goto_1

    :cond_d
    if-eqz p3, :cond_e

    sget p1, Lb/k/a;->fragment_open_enter:I

    goto :goto_1

    :cond_e
    sget p1, Lb/k/a;->fragment_open_exit:I

    :goto_1
    if-gez p1, :cond_f

    return-object v3

    .line 71
    :cond_f
    new-instance p2, Lb/k/d/g;

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-direct {p2, p0}, Lb/k/d/g;-><init>(Landroid/view/animation/Animation;)V

    return-object p2
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;
    .locals 3

    const-string v0, "installed_package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lc/b/a/b/i/j;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/j;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lc/b/a/b/i/n;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/n;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "package_update_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lc/b/a/b/i/l;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/l;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v0, "app_usage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lc/b/a/b/i/a;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/a;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-string v0, "system_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lc/b/a/b/i/p;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/p;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-string v0, "connectivity_state_changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lc/b/a/b/i/e;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/e;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string v0, "hard_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lc/b/a/b/i/f;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/f;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    const-string v0, "temperature_event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lc/b/a/b/i/q;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/q;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_7
    const-string v0, "hardware_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lc/b/a/b/i/g;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/g;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_8
    const-string v0, "runtime_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lc/b/a/b/i/m;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/m;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_9
    const-string v0, "localaddr_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lc/b/a/b/i/k;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/k;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_a
    const-string v0, "battery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lc/b/a/b/i/b;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/b;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    const-string v0, "carrier_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lc/b/a/b/i/d;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/d;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_c
    const-string v0, "network_fail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "am_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "am_pss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    const-string v0, "hdmi_plugged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lc/b/a/b/i/h;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/h;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_e
    const-string v0, "bt_bond_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "bt_connection_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 p0, 0x0

    return-object p0

    :cond_10
    :goto_0
    new-instance v0, Lc/b/a/b/i/c;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/c;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_11
    :goto_1
    new-instance v0, Lc/b/a/b/i/o;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Lc/b/a/b/i/o;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lc/d/a/a/v/v;->c()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lc/d/a/a/v/v;->d()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne v0, p2, :cond_1

    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "MMMd"

    .line 64
    invoke-static {v0, p2}, Lc/d/a/a/v/v;->a(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/TypedArray;II)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static a(Landroid/media/AudioPlaybackConfiguration;I)Ljava/lang/String;
    .locals 3

    const-string v0, "toLogFriendlyPlayerState"

    invoke-static {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/media/AudioPlaybackConfiguration;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "exception getPlayerState: "

    invoke-static {p1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IC"

    invoke-static {v0, p1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "unknown"

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/media/AudioPlaybackConfiguration;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apc method not find -> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IC"

    invoke-static {p1, p0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "r"

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move p1, v2

    .line 104
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_4

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public static a([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {p0 .. p5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public static a(Landroid/animation/AnimatorSet;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static a(Landroid/content/ContentProviderClient;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;ILb/h/d/b/e;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x4

    invoke-virtual {p2, p0, p3}, Lb/h/d/b/e;->a(ILandroid/os/Handler;)V

    return-void

    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;ILandroid/util/TypedValue;ILb/h/d/b/e;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    return-void

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static a(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Lc/d/a/a/f0/g;

    if-eqz v0, :cond_0

    check-cast p0, Lc/d/a/a/f0/g;

    .line 105
    iget-object v0, p0, Lc/d/a/a/f0/g;->b:Lc/d/a/a/f0/g$b;

    iget v1, v0, Lc/d/a/a/f0/g$b;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lc/d/a/a/f0/g$b;->o:F

    invoke-virtual {p0}, Lc/d/a/a/f0/g;->i()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    return-void
.end method

.method public static a(Landroid/view/View;Lc/d/a/a/f0/g;)V
    .locals 2

    .line 106
    iget-object v0, p1, Lc/d/a/a/f0/g;->b:Lc/d/a/a/f0/g$b;

    iget-object v0, v0, Lc/d/a/a/f0/g$b;->b:Lc/d/a/a/x/a;

    if-eqz v0, :cond_0

    .line 107
    iget-boolean v0, v0, Lc/d/a/a/x/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lb/h/k/q;->i(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_1

    .line 109
    :cond_1
    iget-object p0, p1, Lc/d/a/a/f0/g;->b:Lc/d/a/a/f0/g$b;

    iget v1, p0, Lc/d/a/a/f0/g$b;->n:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    iput v0, p0, Lc/d/a/a/f0/g$b;->n:F

    invoke-virtual {p1}, Lc/d/a/a/f0/g;->i()V

    :cond_2
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Z)V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 3

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(I)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/widget/TextView;Lb/h/i/b;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 110
    iget-object p1, p1, Lb/h/i/b;->b:Landroid/text/Spannable;

    instance-of v0, p1, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/text/PrecomputedText;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 111
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/widget/TextView;)Lb/h/i/b$a;

    move-result-object v0

    .line 112
    iget-object v1, p1, Lb/h/i/b;->c:Lb/h/i/b$a;

    .line 113
    invoke-virtual {v0, v1}, Lb/h/i/b$a;->a(Lb/h/i/b$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given text can not be applied to TextView."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lb/f/b/g/c;Lb/f/b/d;Ljava/util/ArrayList;I)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/b/g/c;",
            "Lb/f/b/d;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x2

    if-nez p3, :cond_0

    iget v1, v0, Lb/f/b/g/c;->x0:I

    iget-object v2, v0, Lb/f/b/g/c;->A0:[Lb/f/b/g/b;

    move v15, v1

    move-object v14, v2

    const/16 v16, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Lb/f/b/g/c;->y0:I

    iget-object v2, v0, Lb/f/b/g/c;->z0:[Lb/f/b/g/b;

    move v15, v1

    move-object v14, v2

    move/from16 v16, v12

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v15, :cond_74

    aget-object v1, v14, v9

    .line 1
    iget-boolean v2, v1, Lb/f/b/g/b;->t:Z

    const/16 v17, 0x0

    const/16 v8, 0x8

    const/4 v4, 0x1

    if-nez v2, :cond_1d

    .line 2
    iget v2, v1, Lb/f/b/g/b;->o:I

    mul-int/2addr v2, v12

    iget-object v5, v1, Lb/f/b/g/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v6, v5

    move-object v7, v6

    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_18

    iget v13, v1, Lb/f/b/g/b;->i:I

    add-int/2addr v13, v4

    iput v13, v1, Lb/f/b/g/b;->i:I

    iget-object v13, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v3, v1, Lb/f/b/g/b;->o:I

    aput-object v17, v13, v3

    iget-object v13, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v17, v13, v3

    .line 3
    iget v13, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    if-eq v13, v8, :cond_13

    .line 4
    iget v13, v1, Lb/f/b/g/b;->l:I

    add-int/2addr v13, v4

    iput v13, v1, Lb/f/b/g/b;->l:I

    invoke-virtual {v6, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v13, :cond_3

    iget v3, v1, Lb/f/b/g/b;->m:I

    iget v13, v1, Lb/f/b/g/b;->o:I

    if-nez v13, :cond_1

    .line 5
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()I

    move-result v13

    goto :goto_3

    :cond_1
    if-ne v13, v4, :cond_2

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v13

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    :goto_3
    add-int/2addr v3, v13

    .line 6
    iput v3, v1, Lb/f/b/g/b;->m:I

    :cond_3
    iget v3, v1, Lb/f/b/g/b;->m:I

    iget-object v13, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v13

    add-int/2addr v13, v3

    iput v13, v1, Lb/f/b/g/b;->m:I

    iget v3, v1, Lb/f/b/g/b;->m:I

    iget-object v13, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, v2, 0x1

    aget-object v13, v13, v20

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v13

    add-int/2addr v13, v3

    iput v13, v1, Lb/f/b/g/b;->m:I

    iget v3, v1, Lb/f/b/g/b;->n:I

    iget-object v13, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v13

    add-int/2addr v13, v3

    iput v13, v1, Lb/f/b/g/b;->n:I

    iget v3, v1, Lb/f/b/g/b;->n:I

    iget-object v13, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, v20

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v13

    add-int/2addr v13, v3

    iput v13, v1, Lb/f/b/g/b;->n:I

    iget-object v3, v1, Lb/f/b/g/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v3, :cond_4

    iput-object v6, v1, Lb/f/b/g/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :cond_4
    iput-object v6, v1, Lb/f/b/g/b;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v13, v1, Lb/f/b/g/b;->o:I

    aget-object v3, v3, v13

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_13

    iget-object v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:[I

    aget v8, v3, v13

    const/4 v4, 0x3

    if-eqz v8, :cond_5

    aget v8, v3, v13

    if-eq v8, v4, :cond_5

    aget v3, v3, v13

    if-ne v3, v12, :cond_e

    :cond_5
    iget v3, v1, Lb/f/b/g/b;->j:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v1, Lb/f/b/g/b;->j:I

    iget-object v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j0:[F

    iget v8, v1, Lb/f/b/g/b;->o:I

    aget v13, v3, v8

    const/16 v19, 0x0

    cmpl-float v22, v13, v19

    if-lez v22, :cond_6

    iget v12, v1, Lb/f/b/g/b;->k:F

    aget v3, v3, v8

    add-float/2addr v12, v3

    iput v12, v1, Lb/f/b/g/b;->k:F

    :cond_6
    iget v3, v1, Lb/f/b/g/b;->o:I

    .line 7
    iget v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v12, 0x8

    if-eq v8, v12, :cond_8

    .line 8
    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v3

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v12, :cond_8

    iget-object v8, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:[I

    aget v12, v8, v3

    if-eqz v12, :cond_7

    aget v3, v8, v3

    if-ne v3, v4, :cond_8

    :cond_7
    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_b

    const/4 v3, 0x0

    cmpg-float v4, v13, v3

    if-gez v4, :cond_9

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lb/f/b/g/b;->q:Z

    goto :goto_5

    :cond_9
    const/4 v3, 0x1

    iput-boolean v3, v1, Lb/f/b/g/b;->r:Z

    :goto_5
    iget-object v3, v1, Lb/f/b/g/b;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lb/f/b/g/b;->h:Ljava/util/ArrayList;

    :cond_a
    iget-object v3, v1, Lb/f/b/g/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v3, v1, Lb/f/b/g/b;->f:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v3, :cond_c

    iput-object v6, v1, Lb/f/b/g/b;->f:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :cond_c
    iget-object v3, v1, Lb/f/b/g/b;->g:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v3, :cond_d

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v4, v1, Lb/f/b/g/b;->o:I

    aput-object v6, v3, v4

    :cond_d
    iput-object v6, v1, Lb/f/b/g/b;->g:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :cond_e
    iget v3, v1, Lb/f/b/g/b;->o:I

    if-nez v3, :cond_10

    iget v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-eqz v3, :cond_f

    goto :goto_6

    :cond_f
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    if-nez v3, :cond_12

    iget v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:I

    goto :goto_6

    :cond_10
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:I

    if-nez v3, :cond_12

    iget v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    :cond_12
    :goto_6
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    :cond_13
    if-eq v7, v6, :cond_14

    iget-object v3, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v4, v1, Lb/f/b/g/b;->o:I

    aput-object v6, v3, v4

    :cond_14
    iget-object v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_15

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v4, v2

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_15

    aget-object v4, v4, v2

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v4, v6, :cond_16

    :cond_15
    move-object/from16 v3, v17

    :cond_16
    if-eqz v3, :cond_17

    goto :goto_7

    :cond_17
    move-object v3, v6

    const/4 v5, 0x1

    :goto_7
    move-object v7, v6

    const/4 v4, 0x1

    const/16 v8, 0x8

    const/4 v12, 0x2

    move-object v6, v3

    goto/16 :goto_2

    :cond_18
    iget-object v3, v1, Lb/f/b/g/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v3, :cond_19

    iget v4, v1, Lb/f/b/g/b;->m:I

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v3

    sub-int/2addr v4, v3

    iput v4, v1, Lb/f/b/g/b;->m:I

    :cond_19
    iget-object v3, v1, Lb/f/b/g/b;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v3, :cond_1a

    iget v4, v1, Lb/f/b/g/b;->m:I

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v2

    sub-int/2addr v4, v2

    iput v4, v1, Lb/f/b/g/b;->m:I

    :cond_1a
    iput-object v6, v1, Lb/f/b/g/b;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v2, v1, Lb/f/b/g/b;->o:I

    if-nez v2, :cond_1b

    iget-boolean v2, v1, Lb/f/b/g/b;->p:Z

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lb/f/b/g/b;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto :goto_8

    :cond_1b
    iget-object v2, v1, Lb/f/b/g/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_8
    iput-object v2, v1, Lb/f/b/g/b;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-boolean v2, v1, Lb/f/b/g/b;->r:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, v1, Lb/f/b/g/b;->q:Z

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_9

    :cond_1c
    const/4 v2, 0x0

    :goto_9
    iput-boolean v2, v1, Lb/f/b/g/b;->s:Z

    const/4 v2, 0x1

    goto :goto_a

    :cond_1d
    move v2, v4

    .line 10
    :goto_a
    iput-boolean v2, v1, Lb/f/b/g/b;->t:Z

    if-eqz v11, :cond_1f

    .line 11
    iget-object v2, v1, Lb/f/b/g/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_b

    :cond_1e
    move/from16 v26, v9

    move-object/from16 v29, v14

    move/from16 v31, v15

    const/16 v18, 0x0

    const/16 v19, 0x2

    goto/16 :goto_4b

    .line 12
    :cond_1f
    :goto_b
    iget-object v12, v1, Lb/f/b/g/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v13, v1, Lb/f/b/g/b;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v1, Lb/f/b/g/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v7, v1, Lb/f/b/g/b;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, v1, Lb/f/b/g/b;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v3, v1, Lb/f/b/g/b;->k:F

    iget-object v4, v1, Lb/f/b/g/b;->f:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v1, Lb/f/b/g/b;->g:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, p3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_20

    const/4 v4, 0x1

    goto :goto_c

    :cond_20
    const/4 v4, 0x0

    :goto_c
    if-nez p3, :cond_24

    iget v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h0:I

    if-nez v5, :cond_21

    const/4 v5, 0x1

    goto :goto_d

    :cond_21
    const/4 v5, 0x0

    :goto_d
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h0:I

    move/from16 v23, v3

    const/4 v3, 0x1

    if-ne v6, v3, :cond_22

    const/4 v3, 0x1

    goto :goto_e

    :cond_22
    const/4 v3, 0x0

    :goto_e
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h0:I

    move/from16 v24, v3

    const/4 v3, 0x2

    move/from16 v36, v9

    move v9, v3

    if-ne v6, v3, :cond_23

    move/from16 v3, v24

    move/from16 v24, v36

    goto :goto_11

    :cond_23
    move/from16 v3, v24

    move/from16 v24, v36

    goto :goto_12

    :cond_24
    move/from16 v23, v3

    iget v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i0:I

    if-nez v3, :cond_25

    const/4 v5, 0x1

    goto :goto_f

    :cond_25
    const/4 v5, 0x0

    :goto_f
    iget v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i0:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_26

    const/4 v3, 0x1

    goto :goto_10

    :cond_26
    const/4 v3, 0x0

    :goto_10
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i0:I

    move/from16 v24, v9

    const/4 v9, 0x2

    if-ne v6, v9, :cond_27

    :goto_11
    move/from16 v25, v3

    move/from16 v22, v5

    const/4 v3, 0x1

    goto :goto_13

    :cond_27
    :goto_12
    move/from16 v25, v3

    move/from16 v22, v5

    const/4 v3, 0x0

    :goto_13
    move-object v6, v12

    const/4 v5, 0x0

    :goto_14
    if-nez v5, :cond_34

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, v16

    if-eqz v3, :cond_28

    const/16 v28, 0x1

    goto :goto_15

    :cond_28
    const/16 v28, 0x4

    :goto_15
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v29

    move/from16 v30, v5

    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, p3

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v11, :cond_29

    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:[I

    aget v5, v5, p3

    if-nez v5, :cond_29

    const/4 v5, 0x1

    goto :goto_16

    :cond_29
    const/4 v5, 0x0

    :goto_16
    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_2a

    if-eq v6, v12, :cond_2a

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v11

    add-int v29, v11, v29

    :cond_2a
    move/from16 v11, v29

    if-eqz v3, :cond_2b

    if-eq v6, v12, :cond_2b

    if-eq v6, v8, :cond_2b

    move-object/from16 v29, v14

    const/16 v28, 0x8

    goto :goto_17

    :cond_2b
    move-object/from16 v29, v14

    :goto_17
    iget-object v14, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_2e

    if-ne v6, v8, :cond_2c

    move/from16 v31, v15

    iget-object v15, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v32, v2

    const/4 v2, 0x6

    invoke-virtual {v10, v15, v14, v11, v2}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_18

    :cond_2c
    move-object/from16 v32, v2

    move/from16 v31, v15

    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v15, 0x8

    invoke-virtual {v10, v2, v14, v11, v15}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :goto_18
    if-eqz v5, :cond_2d

    if-nez v3, :cond_2d

    const/4 v2, 0x5

    goto :goto_19

    :cond_2d
    move/from16 v2, v28

    :goto_19
    iget-object v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v10, v5, v9, v11, v2}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    goto :goto_1a

    :cond_2e
    move-object/from16 v32, v2

    move/from16 v31, v15

    :goto_1a
    if-eqz v4, :cond_30

    .line 13
    iget v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v5, 0x8

    if-eq v2, v5, :cond_2f

    .line 14
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_2f

    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, v16, 0x1

    aget-object v5, v2, v5

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v16

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v9, 0x5

    const/4 v11, 0x0

    invoke-virtual {v10, v5, v2, v11, v9}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1b

    :cond_2f
    const/4 v11, 0x0

    :goto_1b
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v16

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v16

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v9, 0x8

    invoke-virtual {v10, v2, v5, v11, v9}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_30
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, v16, 0x1

    aget-object v2, v2, v5

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_31

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v5, v16

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_31

    aget-object v5, v5, v16

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v5, v6, :cond_32

    :cond_31
    move-object/from16 v2, v17

    :cond_32
    if-eqz v2, :cond_33

    move-object v6, v2

    move/from16 v5, v30

    goto :goto_1c

    :cond_33
    const/4 v5, 0x1

    :goto_1c
    move-object/from16 v11, p2

    move-object/from16 v14, v29

    move/from16 v15, v31

    move-object/from16 v2, v32

    goto/16 :goto_14

    :cond_34
    move-object/from16 v32, v2

    move-object/from16 v29, v14

    move/from16 v31, v15

    if-eqz v7, :cond_38

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, v16, 0x1

    aget-object v2, v2, v5

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_38

    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v5

    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, p3

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v9, :cond_35

    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:[I

    aget v6, v6, p3

    if-nez v6, :cond_35

    const/4 v6, 0x1

    goto :goto_1d

    :cond_35
    const/4 v6, 0x0

    :goto_1d
    if-eqz v6, :cond_36

    if-nez v3, :cond_36

    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v9, v0, :cond_36

    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v11

    neg-int v11, v11

    const/4 v14, 0x5

    invoke-virtual {v10, v9, v6, v11, v14}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    goto :goto_1e

    :cond_36
    const/4 v14, 0x5

    if-eqz v3, :cond_37

    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v9, v0, :cond_37

    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v11

    neg-int v11, v11

    const/4 v15, 0x4

    invoke-virtual {v10, v9, v6, v11, v15}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    :cond_37
    :goto_1e
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v9, v5

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v2

    neg-int v2, v2

    const/4 v9, 0x6

    invoke-virtual {v10, v6, v5, v2, v9}, Lb/f/b/d;->c(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1f

    :cond_38
    const/4 v14, 0x5

    :goto_1f
    if-eqz v4, :cond_39

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v5, v4

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {v10, v2, v6, v4, v5}, Lb/f/b/d;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_39
    iget-object v2, v1, Lb/f/b/g/b;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_43

    iget-boolean v6, v1, Lb/f/b/g/b;->q:Z

    if-eqz v6, :cond_3a

    iget-boolean v6, v1, Lb/f/b/g/b;->s:Z

    if-nez v6, :cond_3a

    iget v6, v1, Lb/f/b/g/b;->j:I

    int-to-float v6, v6

    goto :goto_20

    :cond_3a
    move/from16 v6, v23

    :goto_20
    move-object/from16 v11, v17

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_21
    if-ge v9, v4, :cond_43

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v5, v21

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v14, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j0:[F

    aget v14, v14, p3

    const/16 v19, 0x0

    cmpg-float v21, v14, v19

    if-gez v21, :cond_3c

    iget-boolean v14, v1, Lb/f/b/g/b;->s:Z

    if-eqz v14, :cond_3b

    iget-object v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, v16, 0x1

    aget-object v5, v0, v5

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v0, v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v2

    const/4 v2, 0x0

    const/4 v14, 0x4

    invoke-virtual {v10, v5, v0, v2, v14}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    move/from16 v27, v14

    move v14, v2

    goto :goto_23

    :cond_3b
    move-object/from16 v21, v2

    const/4 v2, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v27, 0x4

    goto :goto_22

    :cond_3c
    move-object/from16 v21, v2

    const/16 v27, 0x4

    const/4 v2, 0x0

    :goto_22
    cmpl-float v28, v14, v2

    if-nez v28, :cond_3d

    iget-object v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, v16, 0x1

    aget-object v2, v0, v2

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v0, v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v5, 0x8

    const/4 v14, 0x0

    invoke-virtual {v10, v2, v0, v14, v5}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    :goto_23
    move-object/from16 v34, v1

    move/from16 v33, v4

    move/from16 v28, v6

    move/from16 v18, v14

    const/16 v19, 0x0

    goto/16 :goto_28

    :cond_3d
    const/16 v18, 0x0

    if-eqz v11, :cond_42

    iget-object v2, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v2, v16

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 v30, v16, 0x1

    aget-object v2, v2, v30

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v33, v4

    aget-object v4, v0, v16

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v0, v0, v30

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v30, v5

    invoke-virtual/range {p1 .. p1}, Lb/f/b/d;->b()Lb/f/b/b;

    move-result-object v5

    move-object/from16 v34, v1

    const/4 v1, 0x0

    .line 15
    iput v1, v5, Lb/f/b/b;->b:F

    cmpl-float v19, v6, v1

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v19, :cond_41

    cmpl-float v19, v15, v14

    if-nez v19, :cond_3e

    goto :goto_25

    :cond_3e
    const/16 v19, 0x0

    cmpl-float v35, v15, v19

    if-nez v35, :cond_3f

    iget-object v0, v5, Lb/f/b/b;->e:Lb/f/b/b$a;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v11, v4}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object v0, v5, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v0, v2, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_24

    :cond_3f
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v28, :cond_40

    iget-object v2, v5, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v2, v4, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object v1, v5, Lb/f/b/b;->e:Lb/f/b/b$a;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v1, v0, v2}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    :goto_24
    move/from16 v28, v6

    goto :goto_26

    :cond_40
    div-float/2addr v15, v6

    div-float v28, v14, v6

    div-float v15, v15, v28

    move/from16 v28, v6

    iget-object v6, v5, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v6, v11, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object v1, v5, Lb/f/b/b;->e:Lb/f/b/b$a;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-interface {v1, v2, v6}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object v1, v5, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v1, v0, v15}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object v0, v5, Lb/f/b/b;->e:Lb/f/b/b$a;

    neg-float v1, v15

    invoke-interface {v0, v4, v1}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_26

    :cond_41
    :goto_25
    move/from16 v28, v6

    const/16 v19, 0x0

    iget-object v1, v5, Lb/f/b/b;->e:Lb/f/b/b$a;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v1, v11, v6}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object v1, v5, Lb/f/b/b;->e:Lb/f/b/b$a;

    const/high16 v11, -0x40800000    # -1.0f

    invoke-interface {v1, v2, v11}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object v1, v5, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v1, v0, v6}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    iget-object v0, v5, Lb/f/b/b;->e:Lb/f/b/b$a;

    invoke-interface {v0, v4, v11}, Lb/f/b/b$a;->a(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 16
    :goto_26
    invoke-virtual {v10, v5}, Lb/f/b/d;->a(Lb/f/b/b;)V

    goto :goto_27

    :cond_42
    move-object/from16 v34, v1

    move/from16 v33, v4

    move-object/from16 v30, v5

    move/from16 v28, v6

    const/16 v19, 0x0

    :goto_27
    move v15, v14

    move-object/from16 v11, v30

    :goto_28
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v21

    move/from16 v6, v28

    move/from16 v4, v33

    move-object/from16 v1, v34

    const/4 v5, 0x1

    const/4 v14, 0x5

    goto/16 :goto_21

    :cond_43
    move-object/from16 v34, v1

    const/16 v18, 0x0

    const/16 v27, 0x4

    if-eqz v8, :cond_49

    if-eq v8, v7, :cond_44

    if-eqz v3, :cond_49

    :cond_44
    iget-object v0, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v16

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_45

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v3, v0

    goto :goto_29

    :cond_45
    move-object/from16 v3, v17

    :goto_29
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_46

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v6, v0

    goto :goto_2a

    :cond_46
    move-object/from16 v6, v17

    :goto_2a
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v16

    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    if-eqz v3, :cond_48

    if-eqz v6, :cond_48

    move-object/from16 v2, v32

    if-nez p3, :cond_47

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    goto :goto_2b

    :cond_47
    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c0:F

    :goto_2b
    move v5, v2

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v4

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v9

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v11, 0x7

    move-object/from16 v1, p1

    move-object v14, v7

    move-object v7, v0

    move-object v0, v8

    move v8, v9

    move/from16 v15, v24

    const/16 v19, 0x2

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_38

    :cond_48
    move-object v14, v7

    move-object v0, v8

    const/16 v19, 0x2

    move/from16 v26, v24

    goto/16 :goto_46

    :cond_49
    move-object v14, v7

    move-object v0, v8

    move/from16 v15, v24

    const/16 v19, 0x2

    if-eqz v22, :cond_5c

    if-eqz v0, :cond_5c

    move-object/from16 v1, v34

    iget v2, v1, Lb/f/b/g/b;->j:I

    if-lez v2, :cond_4a

    iget v1, v1, Lb/f/b/g/b;->i:I

    if-ne v1, v2, :cond_4a

    const/16 v23, 0x1

    goto :goto_2c

    :cond_4a
    move/from16 v23, v18

    :goto_2c
    move-object v9, v0

    move-object v11, v9

    :goto_2d
    if-eqz v11, :cond_5b

    iget-object v1, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p3

    move-object v8, v1

    :goto_2e
    if-eqz v8, :cond_4b

    .line 17
    iget v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v7, 0x8

    if-ne v1, v7, :cond_4c

    .line 18
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v8, v1, p3

    goto :goto_2e

    :cond_4b
    const/16 v7, 0x8

    :cond_4c
    if-nez v8, :cond_4e

    if-ne v11, v14, :cond_4d

    goto :goto_2f

    :cond_4d
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v26, v15

    const/4 v15, 0x5

    goto/16 :goto_37

    :cond_4e
    :goto_2f
    iget-object v1, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_4f

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_30

    :cond_4f
    move-object/from16 v3, v17

    :goto_30
    if-eq v9, v11, :cond_50

    iget-object v3, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    goto :goto_31

    :cond_50
    if-ne v11, v0, :cond_52

    if-ne v9, v11, :cond_52

    iget-object v3, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v3, v16

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_51

    aget-object v3, v3, v16

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    :goto_31
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_32

    :cond_51
    move-object/from16 v3, v17

    :cond_52
    :goto_32
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    iget-object v4, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v4

    if-eqz v8, :cond_53

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v16

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v6

    iget-object v6, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    :goto_33
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v7

    move-object v7, v6

    move-object/from16 v6, v36

    goto :goto_35

    :cond_53
    iget-object v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_54

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v6

    goto :goto_34

    :cond_54
    move-object/from16 v21, v6

    move-object/from16 v7, v17

    :goto_34
    iget-object v6, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    goto :goto_33

    :goto_35
    if-eqz v21, :cond_55

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v21

    add-int v4, v21, v4

    :cond_55
    move/from16 v21, v4

    if-eqz v9, :cond_56

    iget-object v4, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v4

    add-int/2addr v1, v4

    :cond_56
    if-eqz v2, :cond_4d

    if-eqz v3, :cond_4d

    if-eqz v6, :cond_4d

    if-eqz v7, :cond_4d

    if-ne v11, v0, :cond_57

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    :cond_57
    move v4, v1

    if-ne v11, v14, :cond_58

    iget-object v1, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    move/from16 v21, v1

    :cond_58
    if-eqz v23, :cond_59

    const/16 v24, 0x8

    goto :goto_36

    :cond_59
    const/16 v24, 0x5

    :goto_36
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    const/16 v20, 0x8

    move-object/from16 v20, v8

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v26, v15

    const/4 v15, 0x5

    move/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 19
    :goto_37
    iget v1, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v9, 0x8

    if-eq v1, v9, :cond_5a

    move-object/from16 v21, v11

    :cond_5a
    move-object/from16 v11, v20

    move-object/from16 v9, v21

    move/from16 v15, v26

    goto/16 :goto_2d

    :cond_5b
    :goto_38
    move/from16 v26, v15

    goto/16 :goto_46

    :cond_5c
    move/from16 v26, v15

    move-object/from16 v1, v34

    const/16 v9, 0x8

    const/4 v15, 0x5

    if-eqz v25, :cond_6c

    if-eqz v0, :cond_6c

    .line 20
    iget v2, v1, Lb/f/b/g/b;->j:I

    if-lez v2, :cond_5d

    iget v1, v1, Lb/f/b/g/b;->i:I

    if-ne v1, v2, :cond_5d

    const/16 v23, 0x1

    goto :goto_39

    :cond_5d
    move/from16 v23, v18

    :goto_39
    move-object v8, v0

    move-object v11, v8

    :goto_3a
    if-eqz v11, :cond_69

    iget-object v1, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p3

    :goto_3b
    if-eqz v1, :cond_5e

    .line 21
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    if-ne v2, v9, :cond_5e

    .line 22
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p3

    goto :goto_3b

    :cond_5e
    if-eq v11, v0, :cond_67

    if-eq v11, v14, :cond_67

    if-eqz v1, :cond_67

    if-ne v1, v14, :cond_5f

    move-object/from16 v7, v17

    goto :goto_3c

    :cond_5f
    move-object v7, v1

    :goto_3c
    iget-object v1, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_60

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    :cond_60
    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    iget-object v5, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v5

    if-eqz v7, :cond_62

    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v16

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v15, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v15, :cond_61

    goto :goto_3e

    :cond_61
    move-object/from16 v15, v17

    goto :goto_3f

    :cond_62
    iget-object v6, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v16

    if-eqz v6, :cond_63

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_3d

    :cond_63
    move-object/from16 v9, v17

    :goto_3d
    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v15, v15, v4

    :goto_3e
    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    :goto_3f
    if-eqz v6, :cond_64

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v6

    add-int/2addr v6, v5

    move/from16 v20, v6

    goto :goto_40

    :cond_64
    move/from16 v20, v5

    :goto_40
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v23, :cond_65

    const/16 v21, 0x8

    goto :goto_41

    :cond_65
    move/from16 v21, v27

    :goto_41
    if-eqz v2, :cond_66

    if-eqz v3, :cond_66

    if-eqz v9, :cond_66

    if-eqz v15, :cond_66

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v6, v9

    move-object/from16 v24, v7

    move-object v7, v15

    move-object v15, v8

    move/from16 v8, v20

    move/from16 v20, v27

    move-object/from16 v27, v15

    const/16 v15, 0x8

    move/from16 v9, v21

    invoke-virtual/range {v1 .. v9}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_42

    :cond_66
    move-object/from16 v24, v7

    move/from16 v20, v27

    const/16 v15, 0x8

    move-object/from16 v27, v8

    :goto_42
    move-object/from16 v1, v24

    goto :goto_43

    :cond_67
    move v15, v9

    move/from16 v20, v27

    move-object/from16 v27, v8

    .line 23
    :goto_43
    iget v2, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    if-eq v2, v15, :cond_68

    move-object v8, v11

    goto :goto_44

    :cond_68
    move-object/from16 v8, v27

    :goto_44
    move-object v11, v1

    move v9, v15

    move/from16 v27, v20

    const/4 v15, 0x5

    goto/16 :goto_3a

    .line 24
    :cond_69
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    iget-object v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v16

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, v16, 0x1

    aget-object v11, v3, v4

    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v4

    iget-object v12, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_6b

    if-eq v0, v14, :cond_6a

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v1

    const/4 v4, 0x5

    invoke-virtual {v10, v3, v2, v1, v4}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    goto :goto_45

    :cond_6a
    if-eqz v12, :cond_6b

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v7, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v8, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v9

    const/4 v15, 0x5

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v15

    invoke-virtual/range {v1 .. v9}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_6b
    :goto_45
    if-eqz v12, :cond_6c

    if-eq v0, v14, :cond_6c

    iget-object v1, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x5

    invoke-virtual {v10, v1, v2, v3, v4}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lb/f/b/b;

    :cond_6c
    :goto_46
    if-nez v22, :cond_6d

    if-eqz v25, :cond_73

    :cond_6d
    if-eqz v0, :cond_73

    if-eq v0, v14, :cond_73

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v16

    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, v16, 0x1

    aget-object v2, v2, v3

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_6e

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_47

    :cond_6e
    move-object/from16 v4, v17

    :goto_47
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_6f

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_48

    :cond_6f
    move-object/from16 v5, v17

    :goto_48
    if-eq v13, v14, :cond_71

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_70

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_49

    :cond_70
    move-object/from16 v6, v17

    goto :goto_4a

    :cond_71
    :goto_49
    move-object v6, v5

    :goto_4a
    if-ne v0, v14, :cond_72

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v0, v16

    aget-object v2, v0, v3

    :cond_72
    if-eqz v4, :cond_73

    if-eqz v6, :cond_73

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v0

    iget-object v7, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v7, v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b()I

    move-result v8

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v9, 0x5

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v0

    invoke-virtual/range {v1 .. v9}, Lb/f/b/d;->a(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_73
    :goto_4b
    add-int/lit8 v9, v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v12, v19

    move-object/from16 v14, v29

    move/from16 v15, v31

    goto/16 :goto_1

    :cond_74
    return-void
.end method

.method public static a(Lb/h/k/a0/b;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/h/k/a0/b;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lb/h/k/a0/b;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TreeDebug"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lb/h/k/a0/b;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v4

    const-string p0, "Cycle: %d"

    .line 77
    invoke-static {v1, v2, p0, p1}, Lc/b/a/a/d/f;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 78
    invoke-virtual {p0}, Lb/h/k/a0/b;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    iget-object v6, p0, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v6

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/k/a0/b;->d()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lb/h/k/a0/b;->d()Ljava/lang/CharSequence;

    move-result-object v6

    const/16 v7, 0x2e

    .line 82
    invoke-static {v6, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    if-gez v7, :cond_1

    move v7, v4

    :cond_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v6, "??"

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lb/h/k/a0/b;->y()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ":invisible"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lb/h/k/a0/b;->w()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, ":scrollable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 84
    iget-object v7, p0, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const-string v7, ":"

    .line 85
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 86
    iget-object v12, p0, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v12, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 87
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/k/a0/b;->j()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v8, "}"

    if-nez v6, :cond_5

    const-string v6, ":PANE{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/k/a0/b;->j()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lb/h/k/a0/b;->m()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v6, ":ResId{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/k/a0/b;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lb/h/k/a0/b;->l()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v6, ":TEXT{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/k/a0/b;->l()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lb/h/k/a0/b;->g()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string v6, ":CD{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/k/a0/b;->g()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lb/h/k/a0/b;->b()I

    move-result v6

    const-string v8, "c"

    const-string v9, "C"

    if-eqz v6, :cond_11

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v10, v6, 0x1

    if-eqz v10, :cond_9

    const-string v10, "F"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit8 v10, v6, 0x40

    if-eqz v10, :cond_a

    const-string v10, "A"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit16 v10, v6, 0x80

    if-eqz v10, :cond_b

    const-string v10, "a"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit16 v10, v6, 0x2000

    if-eqz v10, :cond_c

    const-string v10, "-"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit8 v10, v6, 0x10

    if-eqz v10, :cond_d

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    and-int/lit8 v10, v6, 0x20

    if-eqz v10, :cond_e

    const-string v10, "L"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit16 v10, v6, 0x1000

    if-eqz v10, :cond_f

    const-string v10, "+"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const/high16 v10, 0x40000

    and-int/2addr v10, v6

    if-eqz v10, :cond_10

    const-string v10, "e"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const/high16 v10, 0x80000

    and-int/2addr v6, v10

    if-eqz v6, :cond_11

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {p0}, Lb/h/k/a0/b;->n()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/k/a0/b;->o()Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "(X)"

    goto :goto_1

    :cond_12
    const-string v6, "( )"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {p0}, Lb/h/k/a0/b;->r()Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, ":focusable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-virtual {p0}, Lb/h/k/a0/b;->s()Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v6, ":focused"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {p0}, Lb/h/k/a0/b;->x()Z

    move-result v6

    if-eqz v6, :cond_16

    const-string v6, ":selected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    invoke-virtual {p0}, Lb/h/k/a0/b;->p()Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, ":clickable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {p0}, Lb/h/k/a0/b;->u()Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v6, ":longClickable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_18
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v6, p0, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v6

    if-eqz v6, :cond_19

    const-string v6, ":accessibilityFocused"

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    invoke-static {p0}, Lc/b/a/a/d/a;->b(Lb/h/k/a0/b;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const-string v6, ":supportsTextLocation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {p0}, Lb/h/k/a0/b;->q()Z

    move-result v6

    if-nez v6, :cond_1b

    const-string v6, ":disabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {p0}, Lb/h/k/a0/b;->e()Lb/h/k/a0/b$b;

    move-result-object v6

    if-eqz v6, :cond_1c

    const-string v6, ":collection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#R"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/k/a0/b;->e()Lb/h/k/a0/b$b;

    move-result-object v6

    invoke-virtual {v6}, Lb/h/k/a0/b$b;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/k/a0/b;->e()Lb/h/k/a0/b$b;

    move-result-object v6

    invoke-virtual {v6}, Lb/h/k/a0/b$b;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-static {p0}, Lc/b/a/a/d/a;->a(Lb/h/k/a0/b;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string v6, ":heading"

    goto :goto_2

    :cond_1d
    invoke-virtual {p0}, Lb/h/k/a0/b;->f()Lb/h/k/a0/b$c;

    move-result-object v6

    if-eqz v6, :cond_1e

    const-string v6, ":item"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    invoke-virtual {p0}, Lb/h/k/a0/b;->f()Lb/h/k/a0/b$c;

    move-result-object v6

    if-eqz v6, :cond_1f

    const-string v6, "#r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/k/a0/b;->f()Lb/h/k/a0/b$c;

    move-result-object v6

    invoke-virtual {v6}, Lb/h/k/a0/b$c;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/h/k/a0/b;->f()Lb/h/k/a0/b$c;

    move-result-object v6

    invoke-virtual {v6}, Lb/h/k/a0/b$c;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const-string v5, "%s(%d)%s"

    .line 90
    invoke-static {v1, v2, v5, v0}, Lc/b/a/a/d/f;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lb/h/k/a0/b;->c()I

    move-result v0

    move v5, v4

    :goto_3
    if-ge v5, v0, :cond_21

    invoke-virtual {p0, v5}, Lb/h/k/a0/b;->b(I)Lb/h/k/a0/b;

    move-result-object v6

    if-nez v6, :cond_20

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "%sCouldn\'t get child %d"

    .line 92
    invoke-static {v1, v2, v7, v6}, Lc/b/a/a/d/f;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 93
    :cond_20
    invoke-static {v6, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lb/h/k/a0/b;Ljava/lang/String;Ljava/util/HashSet;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_21
    return-void
.end method

.method public static a(Lcom/aligenie/ags/access/AccessService;IILcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;)V
    .locals 10

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/16 v1, 0xc8

    const/16 v2, 0x320

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x14

    const v6, 0x5f5e100

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p0, p1, p2, v1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;IIII)Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2, v2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;IIII)Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_3
    if-ge p2, v5, :cond_0

    move p2, v5

    :cond_0
    add-int/2addr v6, p2

    invoke-static {p0, p1, p2, p1, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;IIII)Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    iget p3, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, p3, -0x14

    if-le p2, v0, :cond_1

    add-int/lit8 p2, p3, -0x14

    :cond_1
    sub-int p3, p2, v6

    invoke-static {p0, p1, p2, p1, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;IIII)Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    sub-int p3, p1, v6

    invoke-static {p0, p1, p2, p3, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;IIII)Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    const/16 p3, 0x19

    if-ge p1, p3, :cond_2

    move p1, p3

    :cond_2
    add-int/2addr v6, p1

    invoke-static {p0, p1, p2, v6, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;IIII)Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    goto :goto_0

    .line 100
    :pswitch_7
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p2, v4, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    new-instance p3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    int-to-long v8, p1

    const-wide/16 v6, 0x0

    move-object v4, p3

    invoke-direct/range {v4 .. v9}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    aput-object p3, p2, v3

    invoke-static {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    goto :goto_0

    .line 101
    :pswitch_8
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    new-array p2, v4, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    new-instance p3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    int-to-long v8, p1

    const-wide/16 v6, 0x0

    move-object v4, p3

    invoke-direct/range {v4 .. v9}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    aput-object p3, p2, v3

    invoke-static {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 102
    invoke-virtual {p0, p1, p2, p2}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lc/e/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crashsdk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lc/e/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lc/e/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-lez v0, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_3

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_2

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-gt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p0, v0, :cond_4

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public static a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9

    invoke-static {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    invoke-static {p0, p1, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    const/16 v1, 0x82

    const/16 v3, 0x21

    const/16 v4, 0x42

    const/16 v5, 0x11

    const/4 v6, 0x1

    if-eq p0, v5, :cond_5

    if-eq p0, v3, :cond_4

    if-eq p0, v4, :cond_3

    if-ne p0, v1, :cond_2

    .line 25
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p3, Landroid/graphics/Rect;->top:I

    if-gt v7, v8, :cond_1

    :goto_0
    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p3, Landroid/graphics/Rect;->left:I

    if-gt v7, v8, :cond_1

    goto :goto_0

    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v8, :cond_1

    goto :goto_0

    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_1

    goto :goto_0

    :goto_1
    if-nez v7, :cond_6

    return v6

    :cond_6
    if-eq p0, v5, :cond_d

    if-ne p0, v4, :cond_7

    goto :goto_3

    .line 26
    :cond_7
    invoke-static {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p2

    if-eq p0, v5, :cond_b

    if-eq p0, v3, :cond_a

    if-eq p0, v4, :cond_9

    if-ne p0, v1, :cond_8

    .line 27
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_a
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_b
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->left:I

    :goto_2
    sub-int/2addr p0, p1

    .line 28
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-ge p2, p0, :cond_c

    move v2, v6

    :cond_c
    return v2

    :cond_d
    :goto_3
    return v6

    :cond_e
    :goto_4
    return v2
.end method

.method public static a(Landroid/content/Context;IZ)Z
    .locals 1

    invoke-static {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p1, p0, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    iget p0, p0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method public static a(Landroid/content/res/TypedArray;IIZ)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_9

    const/16 v0, 0x21

    if-eq p2, v0, :cond_6

    const/16 v0, 0x42

    if-eq p2, v0, :cond_3

    const/16 v0, 0x82

    if-ne p2, v0, :cond_2

    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_0

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_1

    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p2, v0, :cond_4

    iget p2, p0, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_5

    :cond_4
    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-ge p0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    :cond_6
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_7

    iget p2, p0, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_8

    :cond_7
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le p0, p1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    return v1

    :cond_9
    iget p2, p0, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_a

    iget p2, p0, Landroid/graphics/Rect;->left:I

    if-lt p2, v0, :cond_b

    :cond_a
    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-le p0, p1, :cond_b

    goto :goto_3

    :cond_b
    move v1, v2

    :goto_3
    return v1
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p0

    return p0
.end method

.method public static a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z
    .locals 3

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_1

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_0

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p3, p2, :cond_3

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p3, p2, :cond_3

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p3, p2, :cond_2

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    move p1, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v2

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v1

    :cond_5
    :goto_4
    return v2
.end method

.method public static a(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 33
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 34
    :catch_1
    :cond_1
    throw p0
.end method

.method public static a(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 5

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x400

    :try_start_1
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 35
    :try_start_2
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    :catch_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    const-string p1, "TypefaceCompatUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error copying resource contents to temp file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 37
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 38
    :catch_3
    :cond_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_2
    if-eqz v2, :cond_2

    .line 39
    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 40
    :catch_4
    :cond_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static a()[Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/proc/net/snmp"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "Tcp: "

    const-string v2, "Tcp: Rto"

    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " +"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(II)I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    return p0
.end method

.method public static b(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    .line 9
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 10
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, -0x7f

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    return p2
.end method

.method public static b(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 3

    const-string v0, "getClientUid"

    invoke-static {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/media/AudioPlaybackConfiguration;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "exception getClientUid: "

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IC"

    invoke-static {v2, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView$y;Lb/q/d/q;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$n;Z)I
    .locals 1

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$n;->e()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->a()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->a()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Lb/q/d/q;->a(Landroid/view/View;)I

    move-result p5

    invoke-virtual {p1, p2}, Lb/q/d/q;->d(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p5, p1

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->l(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->l(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p5

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->a()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;IIII)Landroid/accessibilityservice/GestureDescription;
    .locals 8

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/graphics/Point;->x:I

    if-lt p1, v2, :cond_1

    add-int/lit8 p1, v2, -0x1

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    iget v2, p0, Landroid/graphics/Point;->y:I

    if-le p2, v2, :cond_3

    move p2, v2

    :cond_3
    :goto_1
    if-gez p3, :cond_4

    move p3, v1

    goto :goto_2

    :cond_4
    iget v2, p0, Landroid/graphics/Point;->x:I

    if-le p3, v2, :cond_5

    move p3, v2

    :cond_5
    :goto_2
    if-gez p4, :cond_6

    move p0, v1

    goto :goto_3

    :cond_6
    iget p0, p0, Landroid/graphics/Point;->y:I

    if-le p4, p0, :cond_7

    goto :goto_3

    :cond_7
    move p0, p4

    :goto_3
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p1, p3

    int-to-float p0, p0

    invoke-virtual {v3, p1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    new-array p0, v0, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    new-instance p1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x190

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    aput-object p1, p0, v1

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x2

    move-object v2, v0

    move-object v3, v2

    :goto_0
    if-lez v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/e/a;->a(Landroid/database/Cursor;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/database/Cursor;)V

    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/ContentProviderClient;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/database/Cursor;)V

    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/ContentProviderClient;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/database/Cursor;)V

    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/ContentProviderClient;)V

    throw p0

    :cond_1
    :goto_1
    return-object v3
.end method

.method public static b(Landroid/widget/TextView;)Lb/h/i/b$a;
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/h/i/b$a;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/h/i/b$a;-><init>(Landroid/text/PrecomputedText$Params;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v4, :cond_2

    :cond_1
    :pswitch_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v4, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result p0

    if-eq p0, v6, :cond_5

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v6, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    if-eqz v5, :cond_6

    :pswitch_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :pswitch_2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_5
    :goto_0
    :pswitch_3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :pswitch_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_6
    :pswitch_5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 6
    :goto_1
    new-instance v1, Lb/h/i/b$a;

    invoke-direct {v1, v0, p0, v2, v3}, Lb/h/i/b$a;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public static b(I)Lc/d/a/a/f0/d;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1
    new-instance p0, Lc/d/a/a/f0/j;

    invoke-direct {p0}, Lc/d/a/a/f0/j;-><init>()V

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lc/d/a/a/f0/e;

    invoke-direct {p0}, Lc/d/a/a/f0/e;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lc/d/a/a/f0/j;

    invoke-direct {p0}, Lc/d/a/a/f0/j;-><init>()V

    return-object p0
.end method

.method public static b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "yMMMd"

    .line 7
    invoke-static {v0, p2}, Lc/d/a/a/v/v;->a(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    .line 8
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const v1, 0x100c0280

    goto :goto_0

    :cond_0
    const v1, 0xc0280

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "android.support.PARENT_ACTIVITY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public static b(Landroid/content/ContentProviderClient;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Landroid/widget/TextView;I)V
    .locals 3

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lc/e/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crashsdk"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeLog(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b()Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    invoke-static {p0}, Lb/h/k/q;->m(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static c(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/16 v1, 0x8

    if-eq p0, v1, :cond_5

    const/16 v2, 0x10

    if-eq p0, v2, :cond_4

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3

    const/16 v0, 0x40

    if-eq p0, v0, :cond_2

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x7

    return p0

    :cond_2
    const/4 p0, 0x6

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0

    :cond_4
    return v0

    :cond_5
    const/4 p0, 0x3

    return p0

    :cond_6
    return v1

    :cond_7
    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static c(II)I
    .locals 1

    mul-int/lit8 v0, p0, 0xd

    mul-int/2addr v0, p0

    mul-int/2addr p1, p1

    add-int/2addr p1, v0

    return p1
.end method

.method public static c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    :goto_1
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    goto :goto_1
.end method

.method public static c(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 3

    const-string v0, "getPlayerInterfaceId"

    invoke-static {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/media/AudioPlaybackConfiguration;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "exception getPlayerInterfaceId: "

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IC"

    invoke-static {v2, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static c(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string v1, "window"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_1
    return-object v0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p0, Lb/h/e/i/b;

    if-eqz v0, :cond_0

    check-cast p0, Lb/h/e/i/c;

    .line 7
    iget-object p0, p0, Lb/h/e/i/c;->g:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/widget/TextView;I)V
    .locals 2

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public static final c(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "com.yunos.aliicx.debug"

    .line 1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Aliicx"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeLog(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static c()Z
    .locals 2

    .line 5
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static d(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 2

    const-string v0, "getPlayerState"

    invoke-static {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/media/AudioPlaybackConfiguration;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "exception getPlayerState: "

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IC"

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static d(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ".font"

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return-object v3

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "com.yunos.aliicx.debug"

    .line 1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Aliicx"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeLog(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(I)Z
    .locals 1

    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_3

    if-ne p1, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x1388

    const/4 v2, 0x1

    if-le p0, v1, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-le p1, v1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-ne p0, p1, :cond_3

    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public static e(II)I
    .locals 1

    const v0, 0x100111

    and-int/2addr p1, v0

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static e(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 2

    const-string v0, "getPlayerType"

    invoke-static {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/media/AudioPlaybackConfiguration;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "exception getPlayerType: "

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IC"

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static e(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 5

    if-eqz p0, :cond_2

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_1

    const/4 v2, 0x1

    .line 2
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "is_foreground"

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lc/b/a/b/o/d;->a(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v1

    const-wide/16 v2, 0x0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    :cond_2
    const-wide/32 v4, 0x186a0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "event_type"

    const-string v2, "debug"

    const-string v3, "event_name"

    invoke-static {v1, v2, v3, p1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object p1

    const-string v1, "cmd"

    invoke-virtual {p1, v1, p0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "result"

    invoke-virtual {p1, v0, p0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {p1}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    :cond_4
    return-void
.end method

.method public static e(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lc/b/a/b/o/k;

    monitor-enter v0

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_1
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static g(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
