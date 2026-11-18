.class public Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;
.super Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;
.source "DCountDownTimerConstructor.java"


# static fields
.field public static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field public static final TAG:Ljava/lang/String; = "DCountDownTimerConstructor"


# instance fields
.field private final MARGIN_BOTTOM:I

.field private final MARGIN_LEFT:I

.field private final MARGIN_RIGHT:I

.field private final MARGIN_TOP:I

.field private final TEXT_COLOR:I

.field private final TEXT_SIZE:I

.field private final colonTextDefaults:[I

.field private final seeMoreTextDefaults:[I

.field private final timerTextDefaults:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->MARGIN_LEFT:I

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->MARGIN_TOP:I

    const/4 v0, 0x2

    .line 67
    iput v0, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->MARGIN_RIGHT:I

    const/4 v0, 0x3

    .line 69
    iput v0, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->MARGIN_BOTTOM:I

    const/4 v0, 0x6

    .line 71
    iput v0, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->TEXT_SIZE:I

    const/4 v0, 0x7

    .line 73
    iput v0, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->TEXT_COLOR:I

    const/16 v0, 0x8

    .line 77
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->seeMoreTextDefaults:[I

    .line 79
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->timerTextDefaults:[I

    .line 81
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->colonTextDefaults:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        0xc
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x14
        0x14
        0xc
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        0xa
        -0x1000000
    .end array-data
.end method

.method private getTextViewMargin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)[I
    .locals 5

    const/4 v0, 0x0

    .line 359
    aget v1, p6, v0

    invoke-static {p1, p2, v1}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result p2

    const/4 v1, 0x1

    .line 361
    aget v2, p6, v1

    invoke-static {p1, p3, v2}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result p3

    const/4 v2, 0x2

    .line 363
    aget v3, p6, v2

    invoke-static {p1, p4, v3}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result p4

    const/4 v3, 0x3

    .line 365
    aget v4, p6, v3

    invoke-static {p1, p5, v4}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result p1

    .line 367
    aget p5, p6, v0

    if-ne p2, p5, :cond_0

    aget p5, p6, v1

    if-ne p3, p5, :cond_0

    aget p5, p6, v2

    if-ne p4, p5, :cond_0

    aget p5, p6, v3

    if-ne p1, p5, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p5, 0x4

    .line 372
    new-array p5, p5, [I

    aput p2, p5, v0

    aput p3, p5, v1

    aput p4, p5, v2

    aput p1, p5, v3

    return-object p5
.end method

.method private setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V
    .locals 6

    .line 343
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 344
    aget v1, p2, v1

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v4, p2, v4

    const/4 v5, 0x3

    aget v5, p2, v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 347
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x7

    .line 348
    aget v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x6

    .line 349
    aget p2, p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private setTextViewStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 11

    move-object v0, p1

    .line 247
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v3, p8

    invoke-static {v1, v3, v2}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v1

    int-to-float v1, v1

    .line 249
    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 252
    :cond_0
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, -0x1000000

    move-object/from16 v3, p9

    .line 253
    invoke-static {v3, v1}, Lcom/taobao/android/dinamic/property/DAttrUtils;->parseColor(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 255
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p10

    invoke-direct/range {v4 .. v10}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->getTextViewMargin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v1

    if-nez v1, :cond_2

    .line 262
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 265
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 267
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 268
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v5, p6

    invoke-static {v4, v5, v2}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 271
    :cond_3
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 272
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v5, p7

    invoke-static {v4, v5, v2}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_4
    if-eqz v1, :cond_5

    .line 276
    aget v2, v1, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x2

    aget v5, v1, v5

    const/4 v6, 0x3

    aget v1, v1, v6

    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 280
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method private setTimerTextBackground(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 287
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-nez v0, :cond_0

    .line 288
    invoke-static {p4, v1}, Lcom/taobao/android/dinamic/property/DAttrUtils;->parseColor(Ljava/lang/String;I)I

    move-result p4

    goto :goto_0

    :cond_0
    const/high16 p4, -0x1000000

    .line 292
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, p5, v2}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result p5

    if-ne p4, v1, :cond_1

    if-eqz p5, :cond_2

    .line 295
    :cond_1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    int-to-float p5, p5

    .line 296
    invoke-virtual {v0, p5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 297
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 298
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public applyDefaultProperty(Landroid/view/View;Ljava/util/Map;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/android/dinamic/model/DinamicParams;",
            ")V"
        }
    .end annotation

    .line 306
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->applyDefaultProperty(Landroid/view/View;Ljava/util/Map;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 308
    check-cast p1, Lcom/taobao/android/dinamic/view/DCountDownTimerView;

    .line 310
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getSeeMoreView()Landroid/widget/TextView;

    move-result-object p2

    .line 311
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getHour()Landroid/widget/TextView;

    move-result-object p3

    .line 312
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getMinute()Landroid/widget/TextView;

    move-result-object v0

    .line 313
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getSecond()Landroid/widget/TextView;

    move-result-object v1

    .line 314
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getColonFirst()Landroid/widget/TextView;

    move-result-object v2

    .line 315
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getColonSecond()Landroid/widget/TextView;

    move-result-object p1

    .line 317
    iget-object v3, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->seeMoreTextDefaults:[I

    invoke-direct {p0, p2, v3}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V

    const-string v3, ""

    .line 318
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p2, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->timerTextDefaults:[I

    invoke-direct {p0, p3, p2}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V

    .line 321
    iget-object p2, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->timerTextDefaults:[I

    invoke-direct {p0, v0, p2}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V

    .line 322
    iget-object p2, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->timerTextDefaults:[I

    invoke-direct {p0, v1, p2}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V

    const/4 p2, 0x0

    .line 323
    invoke-virtual {p3, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 324
    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 325
    invoke-virtual {v1, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 327
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    .line 328
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v3, -0x1000000

    .line 329
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 331
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object p2, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->colonTextDefaults:[I

    invoke-direct {p0, v2, p2}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V

    .line 336
    iget-object p2, p0, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->colonTextDefaults:[I

    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V

    const-string p2, ":"

    .line 337
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public initializeView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 85
    new-instance p1, Lcom/taobao/android/dinamic/view/DCountDownTimerView;

    invoke-direct {p1, p2, p3}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1
.end method

.method public setAttributes(Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taobao/android/dinamic/model/DinamicParams;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 90
    invoke-super/range {p0 .. p4}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->setAttributes(Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 92
    move-object/from16 v14, p1

    check-cast v14, Lcom/taobao/android/dinamic/view/DCountDownTimerView;

    const-string v2, "dTimerTextMarginLeft"

    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "dTimerCornerRadius"

    const-string v5, "dTimerBackgroundColor"

    const-string v6, "dTimerTextColor"

    const-string v7, "dTimerTextSize"

    const-string v8, "dTimerTextHeight"

    const-string v9, "dTimerTextWidth"

    const-string v10, "dTimerTextMarginBottom"

    const-string v11, "dTimerTextMarginRight"

    const-string v12, "dTimerTextMarginTop"

    if-nez v3, :cond_0

    .line 94
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v13, v2

    nop

    nop

    .line 105
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v12, v2

    nop

    nop

    .line 106
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v11, v2

    nop

    nop

    .line 107
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v10, v2

    nop

    nop

    .line 108
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v9, v2

    nop

    nop

    .line 109
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v15, v2

    nop

    nop

    .line 110
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    nop

    nop

    .line 111
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    nop

    nop

    .line 112
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v18, v2

    nop

    nop

    .line 113
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v19, v2

    nop

    nop

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v4, v13

    move-object v5, v12

    move-object v6, v11

    move-object v7, v10

    move-object v8, v9

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    .line 103
    invoke-virtual/range {v2 .. v13}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTimerTextViewStyle(Lcom/taobao/android/dinamic/view/DCountDownTimerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "dColonTextMarginLeft"

    .line 116
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "dColonTextWidth"

    const-string v5, "dColonTextMarginBottom"

    const-string v6, "dColonTextMarginRight"

    const-string v7, "dColonTextMarginTop"

    if-nez v3, :cond_2

    .line 117
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 119
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 120
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "dColonTextHeight"

    .line 121
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "dColonTextSize"

    .line 122
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "dColonTextColor"

    .line 123
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "dColonText"

    .line 124
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    nop

    nop

    .line 127
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    nop

    nop

    .line 128
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v6, v2

    nop

    nop

    .line 129
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v9, v2

    nop

    nop

    .line 130
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v10, v2

    nop

    nop

    const-string v2, "dColonTextHeight"

    .line 131
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v11, v2

    nop

    nop

    const-string v2, "dColonTextSize"

    .line 132
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v12, v2

    nop

    nop

    const-string v2, "dColonTextColor"

    .line 133
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v13, v2

    nop

    nop

    const-string v2, "dColonText"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v15, v2

    nop

    nop

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v4, v8

    move-object v5, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v15

    .line 125
    invoke-virtual/range {v2 .. v12}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setColonTextViewStyle(Lcom/taobao/android/dinamic/view/DCountDownTimerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "dFutureTime"

    .line 136
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "dCurrentTime"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move-object/from16 v11, p0

    goto :goto_1

    :cond_5
    :goto_0
    const-string v2, "dFutureTime"

    .line 137
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    nop

    nop

    const-string v3, "dCurrentTime"

    .line 138
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    nop

    nop

    move-object/from16 v11, p0

    .line 137
    invoke-virtual {v11, v14, v2, v3}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setFutureTime(Lcom/taobao/android/dinamic/view/DCountDownTimerView;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v2, "dSeeMoreText"

    .line 141
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "dSeeMoreTextMarginLeft"

    .line 142
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "dSeeMoreTextMarginTop"

    .line 143
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "dSeeMoreTextMarginRight"

    .line 144
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "dSeeMoreTextMarginBottom"

    .line 145
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "dSeeMoreTextWidth"

    .line 146
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "dSeeMoreTextHeight"

    .line 147
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "dSeeMoreTextSize"

    .line 148
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "dSeeMoreTextColor"

    .line 149
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, "dSeeMoreText"

    .line 150
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    nop

    nop

    const-string v1, "dSeeMoreTextMarginLeft"

    .line 151
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    nop

    nop

    const-string v1, "dSeeMoreTextMarginTop"

    .line 152
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    nop

    nop

    const-string v1, "dSeeMoreTextMarginRight"

    .line 153
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    nop

    nop

    const-string v1, "dSeeMoreTextMarginBottom"

    .line 154
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    nop

    nop

    const-string v1, "dSeeMoreTextWidth"

    .line 155
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    nop

    nop

    const-string v1, "dSeeMoreTextHeight"

    .line 156
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    nop

    nop

    const-string v1, "dSeeMoreTextSize"

    .line 157
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    nop

    nop

    const-string v1, "dSeeMoreTextColor"

    .line 158
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    nop

    nop

    move-object/from16 v0, p0

    move-object v1, v14

    .line 150
    invoke-virtual/range {v0 .. v10}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setSeeMoreTextViewStyle(Lcom/taobao/android/dinamic/view/DCountDownTimerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setColonTextViewStyle(Lcom/taobao/android/dinamic/view/DCountDownTimerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v11, p0

    move-object/from16 v12, p10

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getColonFirst()Landroid/widget/TextView;

    move-result-object v13

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getColonSecond()Landroid/widget/TextView;

    move-result-object v14

    .line 207
    iget-object v10, v11, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->colonTextDefaults:[I

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTextViewStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 210
    iget-object v10, v11, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->colonTextDefaults:[I

    move-object v1, v14

    invoke-direct/range {v0 .. v10}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTextViewStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 214
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setFutureTime(Lcom/taobao/android/dinamic/view/DCountDownTimerView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 177
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->hideCountDown()V

    const-wide/16 p2, -0x1

    .line 179
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->setFutureTime(J)V

    .line 180
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getTimer()Lcom/taobao/android/dinamic/view/HandlerTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/HandlerTimer;->stop()V

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->setFutureTime(J)V

    .line 184
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 185
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    .line 186
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->setCurrentTime(J)V

    .line 189
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getLastTime()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->showCountDown()V

    .line 191
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->updateCountDownViewTime()V

    .line 192
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getTimer()Lcom/taobao/android/dinamic/view/HandlerTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/HandlerTimer;->start()V

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->hideCountDown()V

    .line 195
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getTimer()Lcom/taobao/android/dinamic/view/HandlerTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/HandlerTimer;->stop()V

    :goto_0
    return-void
.end method

.method public setSeeMoreTextViewStyle(Lcom/taobao/android/dinamic/view/DCountDownTimerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 167
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getSeeMoreView()Landroid/widget/TextView;

    move-result-object v1

    move-object v0, p2

    .line 168
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v11, p0

    .line 170
    iget-object v10, v11, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->seeMoreTextDefaults:[I

    move-object v0, p0

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v10}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTextViewStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    return-void
.end method

.method public setTimerTextViewStyle(Lcom/taobao/android/dinamic/view/DCountDownTimerView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v11, p0

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getHour()Landroid/widget/TextView;

    move-result-object v12

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getMinute()Landroid/widget/TextView;

    move-result-object v13

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamic/view/DCountDownTimerView;->getSecond()Landroid/widget/TextView;

    move-result-object v14

    .line 229
    iget-object v10, v11, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->timerTextDefaults:[I

    move-object v0, p0

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTextViewStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 233
    iget-object v10, v11, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->timerTextDefaults:[I

    move-object v1, v13

    invoke-direct/range {v0 .. v10}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTextViewStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 237
    iget-object v10, v11, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->timerTextDefaults:[I

    move-object v1, v14

    invoke-direct/range {v0 .. v10}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTextViewStyle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    move-object/from16 p1, p0

    move-object/from16 p2, v12

    move-object/from16 p3, v13

    move-object/from16 p4, v14

    move-object/from16 p5, p10

    move-object/from16 p6, p11

    .line 241
    invoke-direct/range {p1 .. p6}, Lcom/taobao/android/dinamic/constructor/DCountDownTimerConstructor;->setTimerTextBackground(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
