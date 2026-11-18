.class public Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;
.super Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;
.source "APTitleBar.java"


# static fields
.field public static final TITLE_CENTER:I = 0x11

.field public static final TITLE_LEFT:I = 0x10


# instance fields
.field private A:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

.field private B:Lcom/alipay/mobile/verifyidentity/ui/APButton;

.field private C:Landroid/view/View;

.field private D:Landroid/content/res/ColorStateList;

.field private E:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final J:Z

.field private final K:Z

.field private final L:Z

.field private final M:I

.field private final N:I

.field private final O:I

.field private final P:I

.field private final Q:I

.field private R:Z

.field private S:Landroid/view/View;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

.field private a:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field private b:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field private c:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

.field private d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

.field private e:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

.field private f:Landroid/view/View;

.field private g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

.field private h:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

.field private i:Lcom/alipay/mobile/verifyidentity/ui/APButton;

.field icon_height:F

.field icon_width:F

.field private j:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

.field private k:Landroid/view/View;

.field private l:Lcom/alipay/mobile/verifyidentity/ui/APButton;

.field private m:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

.field margin_left_generic:F

.field margin_right:F

.field margin_right_generic:F

.field margin_seperator:F

.field private n:Landroid/view/View;

.field private o:Lcom/alipay/mobile/verifyidentity/ui/APButton;

.field private p:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

.field private q:Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;

.field private r:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

.field private s:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

.field private t:Lcom/alipay/mobile/verifyidentity/ui/APButton;

.field touch_height:F

.field touch_width:F

.field private u:Lcom/alipay/mobile/verifyidentity/ui/APButton;

.field private v:Landroid/view/View;

.field private w:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

.field private x:Lcom/alipay/mobile/verifyidentity/ui/APImageView;

.field private y:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

.field private z:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->D:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->R:Z

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->margin_right:F

    .line 85
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->margin_right_generic:F

    .line 86
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->margin_left_generic:F

    .line 87
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_height:F

    .line 88
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_width:F

    .line 89
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->touch_height:F

    .line 90
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->touch_width:F

    .line 91
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->margin_seperator:F

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->ap_title_bar:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$styleable;->viTitleBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->F:Ljava/lang/String;

    const/4 p2, 0x2

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->G:Ljava/lang/String;

    const/4 p2, 0x3

    .line 106
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->M:I

    const/4 p2, 0x6

    .line 107
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->H:Ljava/lang/String;

    const/4 p2, 0x7

    .line 108
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->N:I

    const/4 p2, 0x4

    .line 109
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->I:Ljava/lang/String;

    const/4 p2, 0x5

    .line 110
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->O:I

    const/16 p2, 0x8

    .line 111
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->J:Z

    const/16 p2, 0x9

    .line 112
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->K:Z

    const/16 p2, 0xa

    .line 113
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->L:Z

    const/16 p2, 0xc

    .line 114
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->Q:I

    const/16 p2, 0xb

    const/16 v0, 0x10

    .line 115
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->P:I

    .line 116
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->D:Landroid/content/res/ColorStateList;

    .line 117
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_icon_margin_right_generic:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->margin_right_generic:F

    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_icon_margin_left_generic:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->margin_left_generic:F

    .line 122
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_icon_margin_seperator:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->margin_seperator:F

    .line 124
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_icon_margin_right:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->margin_right:F

    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_icon_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_height:F

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_icon_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_width:F

    .line 127
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_icon_touch_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->touch_height:F

    .line 128
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_icon_touch_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->touch_width:F

    .line 129
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a()V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->l:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->l:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 499
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 504
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->o:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->o:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 509
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->B:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->B:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/alipay/mobile/verifyidentity/ui/APButton;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 788
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    .line 789
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v1, v0

    cmpl-float v2, v1, p6

    if-lez v2, :cond_1

    float-to-int v0, p6

    int-to-float p5, p5

    mul-float p5, p5, p6

    div-float/2addr p5, v1

    float-to-int p5, p5

    .line 801
    :cond_1
    iput p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 802
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 803
    invoke-virtual {p7, p1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    int-to-float p1, v0

    sub-float/2addr p6, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p6, p1

    add-float/2addr p3, p6

    float-to-int p1, p3

    .line 805
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-float/2addr p6, p4

    float-to-int p1, p6

    .line 806
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 807
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "leftMargin="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", rightMargin="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "APTitleBar"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/ui/APButton;FF)V
    .locals 3

    .line 818
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 819
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 820
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, p2

    if-gez v1, :cond_0

    .line 821
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    div-float/2addr p2, v2

    float-to-int p2, p2

    .line 822
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 823
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 825
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1

    .line 826
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p3, p2

    div-float/2addr p3, v2

    float-to-int p2, p3

    .line 827
    iget p3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p2

    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 828
    iget p3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, p2

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 830
    :cond_1
    new-instance p2, Landroid/view/TouchDelegate;

    invoke-direct {p2, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 831
    const-class p3, Landroid/view/View;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 832
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->q:Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 861
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->P:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 865
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 877
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 879
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 880
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->w:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 884
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setVisibility(I)V

    .line 886
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 890
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_no_back_left_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 892
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_no_back_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 894
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->y:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {v3, v0, v1, v2, v1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setPadding(IIII)V

    .line 896
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public attachFlagInThirdButton(Landroid/view/View;IIII)V
    .locals 2

    .line 414
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->T:Landroid/view/View;

    .line 415
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_third_button_parent:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->z:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 416
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, -0x1

    const/16 v1, 0xa

    .line 419
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x5

    .line 420
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 421
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 422
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->T:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->z:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->T:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public attachFlagInTitleLinearLayout(Landroid/view/View;IIII)V
    .locals 2

    .line 315
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->U:Landroid/view/View;

    .line 316
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_top_ll:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->c:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 317
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, -0x1

    const/16 v1, 0xa

    .line 320
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x9

    .line 321
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 322
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 323
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->U:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->c:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->U:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public attachNewFlagView(Landroid/view/View;)V
    .locals 1

    .line 395
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->S:Landroid/view/View;

    .line 396
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->titlebar_kenel:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->V:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 397
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->V:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->S:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public clearTitleTextClickListener()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->x:Lcom/alipay/mobile/verifyidentity/ui/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APImageView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->w:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setClickable(Z)V

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->w:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getBackButton()Lcom/alipay/mobile/verifyidentity/ui/APButton;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->u:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    return-object v0
.end method

.method public getBlankMid()Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->E:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    return-object v0
.end method

.method public getContainerRightButton()Lcom/alipay/mobile/verifyidentity/ui/APButton;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->l:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    return-object v0
.end method

.method public getFeedbackButton()Lcom/alipay/mobile/verifyidentity/ui/APButton;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->o:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    return-object v0
.end method

.method public getGenericButton()Lcom/alipay/mobile/verifyidentity/ui/APButton;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    return-object v0
.end method

.method public getGenericButtonLeftLine()Landroid/view/View;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->f:Landroid/view/View;

    return-object v0
.end method

.method public getGenericButtonParent()Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->e:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    return-object v0
.end method

.method public getImageBackButton()Lcom/alipay/mobile/verifyidentity/ui/APImageButton;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    return-object v0
.end method

.method public getLeftButton()Lcom/alipay/mobile/verifyidentity/ui/APButton;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->i:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    return-object v0
.end method

.method public getLeftButtonParent()Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->h:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    return-object v0
.end method

.method public getLeftGenericButton()Lcom/alipay/mobile/verifyidentity/ui/APButton;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->t:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    return-object v0
.end method

.method public getLeftLine()Landroid/view/View;
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->v:Landroid/view/View;

    return-object v0
.end method

.method public getLeftSwitchContainer()Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->A:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    return-object v0
.end method

.method public getRightButton()Lcom/alipay/mobile/verifyidentity/ui/APButton;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    return-object v0
.end method

.method public getRightButtonParent()Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->j:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    return-object v0
.end method

.method public getSecondTitleTextView()Lcom/alipay/mobile/verifyidentity/ui/APTextView;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->b:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    return-object v0
.end method

.method public getSwitchContainer()Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->p:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    return-object v0
.end method

.method public getThirdButtonParent()Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->z:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    return-object v0
.end method

.method public getTitleBarTitleRl()Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->y:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    return-object v0
.end method

.method public getTitleBarTopRl()Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->w:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    return-object v0
.end method

.method public getTitleLinearLayout()Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->c:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    return-object v0
.end method

.method public getTitleTextView()Lcom/alipay/mobile/verifyidentity/ui/APTextView;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    return-object v0
.end method

.method public getTitlebarBg()Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->r:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    return-object v0
.end method

.method public hideBackButton()V
    .locals 4

    .line 847
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 849
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_no_back_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 851
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_no_back_right_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 853
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->y:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v3}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 133
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 134
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_title_second:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->b:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 135
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_generic_button_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->e:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 136
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_generic_button_left_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->f:Landroid/view/View;

    .line 137
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_generic_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    .line 138
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_back_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    .line 139
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->switch_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->p:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    .line 140
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_left_button_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->h:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 141
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_left_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->i:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    .line 142
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_right_button_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->j:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 143
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_right_button_left_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->k:Landroid/view/View;

    .line 144
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_right_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->l:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    .line 145
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_third_button_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->z:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 146
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_third_button_right_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->C:Landroid/view/View;

    .line 147
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_third_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->B:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    .line 148
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_progress:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->q:Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;

    .line 149
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_top_ll:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->c:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 150
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_feedback_button_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->m:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 151
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_feedback_button_left_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->n:Landroid/view/View;

    .line 152
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_feedback_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->o:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    .line 153
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->titlebar_kenel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->r:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 154
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_left_generic_button_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->s:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 155
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_left_generic_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->t:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    .line 156
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_left_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->v:Landroid/view/View;

    .line 157
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_top_rl:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->w:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 158
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->menu_click_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->x:Lcom/alipay/mobile/verifyidentity/ui/APImageView;

    .line 159
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_title_rl:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->y:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 160
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->left_switch_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->A:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    .line 161
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->title_bar_blank_mid:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->E:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 163
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->u:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    if-eqz v0, :cond_1

    .line 167
    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setOnTextChangeListener(Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;)V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->F:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->G:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->b()V

    .line 182
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d()V

    .line 184
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->Q:I

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setImageBackButtonIcon(I)V

    .line 188
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->M:I

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->M:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->O:I

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->O:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->I:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setLeftButtonText(Ljava/lang/String;)V

    .line 198
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->N:I

    if-eqz v0, :cond_5

    .line 199
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->N:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->H:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setRightButtonText(Ljava/lang/String;)V

    .line 204
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_6

    .line 205
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 207
    :cond_6
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->R:Z

    if-eqz v0, :cond_7

    .line 208
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setDynamicTextSize(Z)V

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->b:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->R:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setDynamicTextSize(Z)V

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->isDynamicTextSize()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getTextSizeGearGetter()Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 217
    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;->getCurrentGear()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_8

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setMaxEms(I)V

    .line 222
    :cond_8
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->K:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 223
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->J:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setSwitchContainerVisiable(Z)V

    .line 225
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 671
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->onLayout(ZIIII)V

    .line 672
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->i:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    iget p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->touch_height:F

    iget p3, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->touch_width:F

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a(Lcom/alipay/mobile/verifyidentity/ui/APButton;FF)V

    .line 673
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->l:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    iget p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->touch_height:F

    iget p3, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->touch_width:F

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a(Lcom/alipay/mobile/verifyidentity/ui/APButton;FF)V

    .line 674
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    iget p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->touch_height:F

    iget p3, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->touch_width:F

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a(Lcom/alipay/mobile/verifyidentity/ui/APButton;FF)V

    .line 675
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->redpoint_top_padding:I

    .line 676
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 677
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->redpoint_left_padding:I

    .line 678
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 679
    iget-object p3, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->S:Landroid/view/View;

    if-eqz p3, :cond_0

    .line 680
    iget-object p4, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->e:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->getLeft()I

    move-result p4

    iget-object p5, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {p5}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getRight()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->S:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    add-int/2addr p4, p2

    iget-object p5, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    .line 682
    invoke-virtual {p5}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getTop()I

    move-result p5

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    add-int/2addr p5, p1

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->e:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 683
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->S:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    .line 684
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getTop()I

    move-result p2

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->S:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p2, p1

    .line 680
    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public setBackButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBackButtonText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setCloseButton(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$drawable;->title_bar_close_btn_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setImageResource(I)V

    .line 522
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFeedbackButtonVisible(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 454
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->o:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 460
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 462
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->m:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .line 726
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_height:F

    iget v7, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_width:F

    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/alipay/mobile/verifyidentity/ui/APButton;)V

    .line 729
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a()V

    return-void
.end method

.method public setGenericButtonIconResource(I)V
    .locals 1

    .line 694
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setGenericButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setGenericButtonText(Ljava/lang/String;)V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    .line 553
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    .line 554
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 555
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a()V

    return-void
.end method

.method public setGenericButtonVisiable(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 441
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->g:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->e:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setImageBackButtonIcon(I)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setImageResource(I)V

    return-void
.end method

.method public setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .line 737
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->i:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_height:F

    iget v7, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_width:F

    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->i:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/alipay/mobile/verifyidentity/ui/APButton;)V

    .line 739
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a()V

    return-void
.end method

.method public setLeftButtonIconResource(I)V
    .locals 1

    .line 710
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->i:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->i:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 569
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a()V

    return-void
.end method

.method public setLeftGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .line 747
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->t:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_height:F

    iget v7, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_width:F

    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->t:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/alipay/mobile/verifyidentity/ui/APButton;)V

    .line 750
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a()V

    return-void
.end method

.method public setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .line 770
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->l:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_height:F

    iget v7, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_width:F

    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->l:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/alipay/mobile/verifyidentity/ui/APButton;)V

    .line 772
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a()V

    return-void
.end method

.method public setRightButtonIconResource(I)V
    .locals 1

    .line 718
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->l:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightButtonText(Ljava/lang/String;)V
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->l:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 578
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a()V

    return-void
.end method

.method public setSecondTitleTextView(Ljava/lang/CharSequence;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->b:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->b:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 247
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->second_title_back_button_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 248
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 249
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->h:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 252
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->h:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 253
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 254
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->h:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->j:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 257
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->j:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 258
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->j:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_ll_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->c:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {v0, v1, p1, v1, v1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSecondTitleTextView(Ljava/lang/String;)V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->b:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->b:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 272
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->second_title_back_button_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 273
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->h:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 277
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->h:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 278
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 279
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->h:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->j:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 282
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->j:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 283
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->j:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_ll_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->c:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {v0, v1, p1, v1, v1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSecondTitleTextViewGone()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->b:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 374
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_ll_padding_orginial:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->c:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v0}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSwitchContainerVisiable(Z)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->p:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setThirdButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .line 759
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->B:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->B:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_height:F

    iget v7, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->icon_width:F

    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->B:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/alipay/mobile/verifyidentity/ui/APButton;)V

    .line 762
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a()V

    return-void
.end method

.method public setThirdButtonIconResource(I)V
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setThirdButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThirdButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->B:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setThirdButtonVisiable(Z)V
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->z:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 480
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->B:Lcom/alipay/mobile/verifyidentity/ui/APButton;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 481
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->C:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 483
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->C:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 486
    :cond_2
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->C:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->a:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleTextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->x:Lcom/alipay/mobile/verifyidentity/ui/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APImageView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->w:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setClickable(Z)V

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->w:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showBackButton()V
    .locals 4

    .line 837
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->d:Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 839
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_show_back_left_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 841
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->title_bar_show_back_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 843
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->y:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    invoke-virtual {v3, v0, v1, v2, v1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public startProgressBar()V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->q:Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$3;-><init>(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopProgressBar()V
    .locals 2

    .line 927
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->q:Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$4;-><init>(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unAttachFlagFromThirdButton(Landroid/view/View;)V
    .locals 1

    .line 427
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->T:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->z:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 431
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->T:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public unAttachFlagFromTitleLinearLayout(Landroid/view/View;)V
    .locals 1

    .line 328
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->U:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->c:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 332
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->U:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public unAttachNewFlagView(Landroid/view/View;)V
    .locals 1

    .line 405
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->S:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->V:Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 409
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->S:Landroid/view/View;

    :cond_1
    return-void
.end method
