.class public Landroid/taobao/windvane/view/WebWaitingView;
.super Landroid/widget/RelativeLayout;
.source "WebWaitingView.java"


# static fields
.field private static final LOADING_BG_ID:I = 0x65

.field private static final LOADING_PGBAR_ID:I = 0x66


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Landroid/taobao/windvane/view/WebWaitingView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Landroid/taobao/windvane/view/WebWaitingView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Landroid/taobao/windvane/view/WebWaitingView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v1, v1, v0

    .line 48
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x65

    .line 49
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 50
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 51
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v5, -0xbbbbbc

    .line 52
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v5, 0x96

    .line 53
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 54
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 55
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/high16 v4, 0x42f00000    # 120.0f

    mul-float v0, v0, v4

    float-to-int v0, v0

    .line 61
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 62
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    invoke-virtual {p0, v2, v4}, Landroid/taobao/windvane/view/WebWaitingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x66

    .line 68
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setId(I)V

    .line 69
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xe

    .line 70
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, 0x6

    .line 71
    invoke-virtual {v4, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0xa

    .line 72
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 73
    invoke-virtual {p0, v0, v4}, Landroid/taobao/windvane/view/WebWaitingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "\u6b63\u5728\u52a0\u8f7d"

    goto :goto_1

    :cond_1
    const-string p1, "Loading"

    .line 77
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x3

    .line 81
    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 82
    invoke-virtual {p0, v0, p1}, Landroid/taobao/windvane/view/WebWaitingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
