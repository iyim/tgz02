.class public Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;
.super Ljava/lang/Object;
.source "SystemBarDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/util/SystemBarDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBarConfig"
.end annotation


# static fields
.field private static final NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME:Ljava/lang/String; = "navigation_bar_height_landscape"

.field private static final NAV_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "navigation_bar_height"

.field private static final NAV_BAR_WIDTH_RES_NAME:Ljava/lang/String; = "navigation_bar_width"

.field private static final SHOW_NAV_BAR_RES_NAME:Ljava/lang/String; = "config_showNavigationBar"

.field private static final STATUS_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "status_bar_height"


# instance fields
.field private final mActionBarHeight:I

.field private final mHasNavigationBar:Z

.field private final mInPortrait:Z

.field private final mNavigationBarHeight:I

.field private final mNavigationBarWidth:I

.field private final mSmallestWidthDp:F

.field private final mStatusBarHeight:I

.field private final mTranslucentNavBar:Z

.field private final mTranslucentStatusBar:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    invoke-static {p1}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mInPortrait:Z

    .line 264
    invoke-direct {p0, p1}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->getSmallestWidthDp(Landroid/app/Activity;)F

    move-result v0

    iput v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mSmallestWidthDp:F

    .line 265
    invoke-static {p1}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mStatusBarHeight:I

    .line 266
    invoke-static {p1}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mActionBarHeight:I

    .line 267
    invoke-static {p1}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mNavigationBarHeight:I

    .line 268
    invoke-static {p1}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mNavigationBarWidth:I

    .line 269
    iget p1, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mNavigationBarHeight:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mHasNavigationBar:Z

    .line 270
    iput-boolean p2, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mTranslucentStatusBar:Z

    .line 271
    iput-boolean p3, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mTranslucentNavBar:Z

    return-void
.end method

.method public static getActionBarHeight(Landroid/content/Context;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 278
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 280
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 2

    const-string v0, "dimen"

    const-string v1, "android"

    .line 339
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 341
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 289
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 290
    invoke-static {p0}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-static {p0}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->isPortrait(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "navigation_bar_height"

    goto :goto_0

    :cond_0
    const-string p0, "navigation_bar_height_landscape"

    .line 297
    :goto_0
    invoke-static {v0, p0}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getNavigationBarWidth(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 307
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 308
    invoke-static {p0}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "navigation_bar_width"

    .line 309
    invoke-static {v0, p0}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getSmallestWidthDp(Landroid/app/Activity;)F
    .locals 3

    .line 347
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 348
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 354
    :goto_0
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v1

    .line 355
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    .line 356
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 1

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    invoke-static {p0, v0}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static hasNavBar(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 322
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 326
    invoke-static {}, Lcom/taobao/tao/util/SystemBarDecorator;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 328
    :cond_0
    invoke-static {}, Lcom/taobao/tao/util/SystemBarDecorator;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    return v2

    .line 333
    :cond_2
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 1

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mActionBarHeight:I

    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 1

    .line 408
    iget v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mNavigationBarHeight:I

    return v0
.end method

.method public getNavigationBarWidth()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mNavigationBarWidth:I

    return v0
.end method

.method public getPixelInsetBottom()I
    .locals 1

    .line 437
    iget-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mNavigationBarHeight:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPixelInsetRight()I
    .locals 1

    .line 450
    iget-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mNavigationBarWidth:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPixelInsetTop(Z)I
    .locals 2

    .line 428
    iget-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mTranslucentStatusBar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mStatusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mActionBarHeight:I

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .line 380
    iget v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mStatusBarHeight:I

    return v0
.end method

.method public hasNavigtionBar()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mHasNavigationBar:Z

    return v0
.end method

.method public isNavigationAtBottom()Z
    .locals 2

    .line 371
    iget v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mSmallestWidthDp:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/taobao/tao/util/SystemBarDecorator$SystemBarConfig;->mInPortrait:Z

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
