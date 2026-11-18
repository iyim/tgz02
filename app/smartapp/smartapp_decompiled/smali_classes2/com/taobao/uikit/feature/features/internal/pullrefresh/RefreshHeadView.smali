.class public Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;
.super Landroid/widget/LinearLayout;
.source "RefreshHeadView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field public static final TYPE_FOOTER:I = 0x2

.field public static final TYPE_FOOTER_HORIZONTAL:I = 0x4

.field public static final TYPE_HEADER:I = 0x1

.field public static final TYPE_HEADER_HORIZONTAL:I = 0x3

.field private static sIconfont:Landroid/graphics/Typeface;

.field private static sReference:I


# instance fields
.field private mArrow:Landroid/widget/TextView;

.field private mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

.field private mRefreshState:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->init(Landroid/content/Context;ILandroid/view/View;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;ILandroid/view/View;Z)V
    .locals 9

    .line 42
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 43
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setOrientation(I)V

    const/16 v2, 0x11

    .line 45
    invoke-virtual {p0, v2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->setGravity(I)V

    .line 47
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 50
    invoke-virtual {p0, p3, v3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v6, 0x0

    .line 55
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    sget v7, Lcom/taobao/uikit/R$id;->uik_refresh_header_view:I

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setId(I)V

    const/high16 v7, 0x42000000    # 32.0f

    mul-float v7, v7, v0

    float-to-int v7, v7

    const/high16 v8, 0x41c00000    # 24.0f

    mul-float v8, v8, v0

    float-to-int v8, v8

    .line 57
    invoke-virtual {v1, v6, v7, v6, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 58
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {p0, v1, v7}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    invoke-virtual {v1, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 68
    iput v2, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    invoke-virtual {v4, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iput-object v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mArrow:Landroid/widget/TextView;

    .line 71
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mArrow:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 72
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mArrow:Landroid/widget/TextView;

    const v6, -0x666667

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mArrow:Landroid/widget/TextView;

    if-nez p2, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance p2, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-direct {p2, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v7, 0x41e00000    # 28.0f

    mul-float v7, v7, v0

    float-to-int v7, v7

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x10

    .line 78
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    invoke-virtual {v4, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iput-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    .line 82
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, "\u4e0b\u62c9\u5237\u65b0"

    .line 83
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 84
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 85
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x3

    .line 86
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 87
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-direct {p1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 88
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 89
    invoke-virtual {v1, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iput-object p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mRefreshState:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 94
    invoke-virtual {p0, p3, v3}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getArrow()Landroid/widget/TextView;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mArrow:Landroid/widget/TextView;

    return-object v0
.end method

.method public getProgressbar()Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    return-object v0
.end method

.method public getRefreshStateText()Landroid/widget/TextView;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mRefreshState:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 137
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 138
    sget-object v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->sIconfont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "uik_core_iconfont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->sIconfont:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mArrow:Landroid/widget/TextView;

    sget-object v1, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->sIconfont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 148
    sget v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->sReference:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->sReference:I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mArrow:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 154
    sget v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->sReference:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->sReference:I

    .line 155
    sget v0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->sReference:I

    if-nez v0, :cond_0

    .line 156
    sput-object v1, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->sIconfont:Landroid/graphics/Typeface;

    .line 158
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setProgressBarColor(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setPaintColor(I)V

    :cond_0
    return-void
.end method

.method public setProgressBarInitState(Z)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->isInitShow(Z)V

    return-void
.end method

.method public setPullDownDistance(I)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setPullDownDistance(I)V

    return-void
.end method

.method public setRefreshViewColor(I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mProgressbar:Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->setPaintColor(I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mRefreshState:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshHeadView;->mArrow:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method
