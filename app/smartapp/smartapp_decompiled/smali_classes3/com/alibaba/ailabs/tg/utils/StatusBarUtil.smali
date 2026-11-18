.class public Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"


# static fields
.field public static final DEFAULT_STATUS_BAR_ALPHA:I = 0x70

.field private static final FAKE_STATUS_BAR_VIEW_ID:I

.field private static final FAKE_TRANSLUCENT_VIEW_ID:I

.field private static final TAG_KEY_HAVE_SET_OFFSET:I = -0x7b


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget v0, Lcom/alibaba/ailabs/tg/baseutils/R$id;->statusbarutil_fake_status_bar_view:I

    sput v0, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    .line 29
    sget v0, Lcom/alibaba/ailabs/tg/baseutils/R$id;->statusbarutil_translucent_view:I

    sput v0, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->FAKE_TRANSLUCENT_VIEW_ID:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static addTranslucentView(Landroid/app/Activity;I)V
    .locals 3

    const v0, 0x1020002

    .line 550
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 551
    sget v1, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->FAKE_TRANSLUCENT_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 553
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    .line 554
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    :cond_0
    invoke-static {p1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 558
    :cond_1
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->createTranslucentStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static calculateStatusColor(II)I
    .locals 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    shr-int/lit8 p1, p0, 0x10

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 680
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-int p1, v2

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-double v1, v1

    .line 681
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v4

    double-to-int v1, v1

    int-to-float p0, p0

    mul-float p0, p0, v0

    float-to-double v2, p0

    .line 682
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-int p0, v2

    const/high16 v0, -0x1000000

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private static clearPreviousSetting(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 534
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 535
    sget v1, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const v0, 0x1020002

    .line 538
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 539
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private static createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 570
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static createStatusBarView(Landroid/app/Activity;II)Landroid/view/View;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 583
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 584
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 585
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    const/4 v2, -0x1

    invoke-direct {v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 586
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 588
    sget p0, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method private static createTranslucentStatusBarView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 3

    .line 644
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 645
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 646
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    const/4 v2, -0x1

    invoke-direct {v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 647
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 648
    invoke-static {p1, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 649
    sget p0, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->FAKE_TRANSLUCENT_VIEW_ID:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method private static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 662
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static hideFakeStatusBarView(Landroid/app/Activity;)V
    .locals 2

    .line 519
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 520
    sget v0, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 524
    :cond_0
    sget v0, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->FAKE_TRANSLUCENT_VIEW_ID:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 526
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static hideSystemNavigationBar(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .line 688
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/16 v2, 0xb

    if-le v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 689
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    .line 690
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 691
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 692
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1006

    .line 695
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setColor(Landroid/app/Activity;I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/16 v0, 0x70

    .line 39
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setColor(Landroid/app/Activity;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setColor(Landroid/app/Activity;II)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_1

    .line 55
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_3

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 58
    sget v1, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_1
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :goto_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static setColorDiff(Landroid/app/Activity;I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    const v0, 0x1020002

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 144
    sget v1, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 153
    :goto_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    return-void
.end method

.method public static setColorForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/16 v0, 0x70

    .line 236
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setColorForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setColorForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 263
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 264
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 266
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 272
    :goto_0
    invoke-virtual {p1, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 273
    sget v1, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 275
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 276
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 280
    :cond_3
    invoke-static {p0, p2}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 283
    :goto_1
    instance-of p2, v0, Landroid/widget/LinearLayout;

    if-nez p2, :cond_4

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 284
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 285
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 286
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    .line 285
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 289
    :cond_4
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setDrawerLayoutProperty(Landroid/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    .line 290
    invoke-static {p0, p3}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setColorForDrawerLayoutDiff(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 317
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 320
    sget v2, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 322
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 323
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/16 v3, 0x70

    .line 325
    invoke-static {p2, v3}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-static {p0, p2}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 331
    :goto_0
    instance-of p2, v1, Landroid/widget/LinearLayout;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 332
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p2, v0, p0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 335
    :cond_2
    invoke-static {p1, v1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setDrawerLayoutProperty(Landroid/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    :cond_3
    return-void
.end method

.method public static setColorForSwipeBack(Landroid/app/Activity;I)V
    .locals 1

    const/16 v0, 0x70

    .line 78
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setColorForSwipeBack(Landroid/app/Activity;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setColorForSwipeBack(Landroid/app/Activity;II)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    const v0, 0x1020002

    .line 91
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 93
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    if-eqz v2, :cond_2

    .line 94
    instance-of v4, v2, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v4, :cond_2

    .line 95
    nop

    nop

    .line 96
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1

    .line 97
    invoke-virtual {v2, v1}, Landroid/support/design/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    .line 98
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 99
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    if-ge p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 101
    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 102
    new-instance p1, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil$1;

    invoke-direct {p1, v2}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil$1;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    invoke-virtual {v2, p1}, Landroid/support/design/widget/CoordinatorLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 110
    :cond_1
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackgroundColor(I)V

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 114
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 116
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setTransparentForWindow(Landroid/app/Activity;)V

    :cond_4
    return-void
.end method

.method public static setColorNoTranslucent(Landroid/app/Activity;I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 127
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setColor(Landroid/app/Activity;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setColorNoTranslucentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 247
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setColorForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static setDrawerLayoutProperty(Landroid/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 301
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 302
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 303
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 304
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    return-void
.end method

.method private static setRootView(Landroid/app/Activity;)V
    .locals 4

    const v0, 0x1020002

    .line 596
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 597
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 598
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 599
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 600
    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 601
    nop

    nop

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static setStatusBarLightMode(Landroid/app/Activity;Z)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 727
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setStatusBarLightMode(Landroid/view/Window;Z)V

    return-void
.end method

.method public static setStatusBarLightMode(Landroid/view/Window;Z)V
    .locals 2
    .param p0    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 738
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 739
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    const/high16 p1, -0x80000000

    .line 743
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    or-int/lit16 p0, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p0, v1, -0x2001

    .line 748
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public static setStatusBarVisibility(Landroid/app/Activity;Z)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 707
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setStatusBarVisibility(Landroid/view/Window;Z)V

    return-void
.end method

.method public static setStatusBarVisibility(Landroid/view/Window;Z)V
    .locals 1
    .param p0    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x400

    if-eqz p1, :cond_0

    .line 719
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method

.method public static setTranslucent(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x70

    .line 164
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setTranslucent(Landroid/app/Activity;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTranslucent(Landroid/app/Activity;I)V
    .locals 2

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 179
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setTransparent(Landroid/app/Activity;)V

    .line 180
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTranslucentDiff(Landroid/app/Activity;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 224
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static setTranslucentForCoordinatorLayout(Landroid/app/Activity;I)V
    .locals 2

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 195
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    .line 196
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTranslucentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1

    const/16 v0, 0x70

    .line 346
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setTranslucentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTranslucentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 2

    .line 356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 359
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setTransparentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V

    .line 360
    invoke-static {p0, p2}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTranslucentForDrawerLayoutDiff(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 399
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 401
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p0, 0x0

    .line 403
    invoke-virtual {p1, p0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    .line 404
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 405
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 407
    invoke-virtual {p1, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 408
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 410
    invoke-virtual {p1, p0}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    :cond_0
    return-void
.end method

.method public static setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 4

    .line 442
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 444
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 445
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0xf

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 446
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    .line 450
    :cond_1
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setTransparentForWindow(Landroid/app/Activity;)V

    .line 451
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    if-eqz p2, :cond_3

    const/16 p1, -0x7b

    .line 453
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 454
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 457
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 458
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v2, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 p0, 0x1

    .line 460
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static setTranslucentForImageView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x70

    .line 431
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 0

    .line 507
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    .line 508
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p1, p2, :cond_0

    .line 509
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->clearPreviousSetting(Landroid/app/Activity;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTranslucentForImageViewInFragment(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x70

    .line 471
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTranslucentForImageViewInFragment(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 483
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    const/4 p2, 0x0

    .line 484
    invoke-static {p0, p2, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTransparent(Landroid/app/Activity;)V
    .locals 2

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 208
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    .line 209
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTransparentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 4

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 373
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 374
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 376
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 381
    :goto_0
    invoke-virtual {p1, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 383
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 384
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, v3, p0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 388
    :cond_2
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setDrawerLayoutProperty(Landroid/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static setTransparentForImageView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 421
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTransparentForImageViewInFragment(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 496
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/tg/utils/StatusBarUtil;->setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static setTransparentForWindow(Landroid/app/Activity;)V
    .locals 2

    .line 610
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 611
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 612
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 613
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x500

    .line 614
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 615
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 616
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x4000000

    .line 617
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static transparentStatusBar(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 626
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 627
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 628
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 629
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 630
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method
