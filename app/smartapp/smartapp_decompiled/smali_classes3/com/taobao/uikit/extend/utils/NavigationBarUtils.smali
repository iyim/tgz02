.class public Lcom/taobao/uikit/extend/utils/NavigationBarUtils;
.super Ljava/lang/Object;
.source "NavigationBarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getContentHeight(Landroid/app/Activity;)I
    .locals 3

    const-string v0, "window"

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 83
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 88
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Lcom/taobao/uikit/extend/utils/NavigationBarUtils;->getCurrentNavigationBarHeight(Landroid/app/Activity;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    .line 90
    :cond_1
    invoke-static {p0}, Lcom/taobao/uikit/extend/utils/DisplayUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getCurrentNavigationBarHeight(Landroid/app/Activity;)I
    .locals 1

    .line 62
    invoke-static {p0}, Lcom/taobao/uikit/extend/utils/NavigationBarUtils;->isNavigationBarShown(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/taobao/uikit/extend/utils/NavigationBarUtils;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getNavigationBarHeight(Landroid/app/Activity;)I
    .locals 4

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNavigationBarShown(Landroid/app/Activity;)Z
    .locals 2

    const v0, 0x1020030

    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method
