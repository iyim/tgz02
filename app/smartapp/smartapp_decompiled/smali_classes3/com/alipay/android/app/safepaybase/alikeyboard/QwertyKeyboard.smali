.class public Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.source "QwertyKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;,
        Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;
    }
.end annotation


# instance fields
.field private final QWERT_123_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_UP_ROW_0:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_UP_ROW_1:[Ljava/lang/String;

.field private final QWERT_123_SHIFT_UP_ROW_2:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_UP_ROW_0:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_UP_ROW_1:[Ljava/lang/String;

.field private final QWERT_ABC_SHIFT_UP_ROW_2:[Ljava/lang/String;

.field private cashierContainer:Landroid/widget/FrameLayout;

.field private ib_shift:Landroid/widget/FrameLayout;

.field private inputTips:Landroid/widget/TextView;

.field private qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

.field private screen_density:D

.field private shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

.field private textSize:F

.field private tv_row1:[Landroid/widget/TextView;

.field private tv_row2:[Landroid/widget/TextView;

.field private tv_row3:[Landroid/widget/TextView;

.field private tv_type:Landroid/widget/TextView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V
    .locals 11

    .line 85
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;-><init>()V

    .line 38
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    .line 39
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    const/16 v0, 0xa

    .line 41
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    const/16 v0, 0x9

    .line 42
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    const/4 v0, 0x7

    .line 43
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    const-string v1, "q"

    const-string v2, "w"

    const-string v3, "e"

    const-string v4, "r"

    const-string v5, "t"

    const-string v6, "y"

    const-string v7, "u"

    const-string v8, "i"

    const-string v9, "o"

    const-string v10, "p"

    .line 47
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_0:[Ljava/lang/String;

    const-string v1, "a"

    const-string v2, "s"

    const-string v3, "d"

    const-string v4, "f"

    const-string v5, "g"

    const-string v6, "h"

    const-string v7, "j"

    const-string v8, "k"

    const-string v9, "l"

    .line 49
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_1:[Ljava/lang/String;

    const-string v1, "z"

    const-string v2, "x"

    const-string v3, "c"

    const-string v4, "v"

    const-string v5, "b"

    const-string v6, "n"

    const-string v7, "m"

    .line 51
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_2:[Ljava/lang/String;

    const-string v1, "Q"

    const-string v2, "W"

    const-string v3, "E"

    const-string v4, "R"

    const-string v5, "T"

    const-string v6, "Y"

    const-string v7, "U"

    const-string v8, "I"

    const-string v9, "O"

    const-string v10, "P"

    .line 54
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    const-string v1, "A"

    const-string v2, "S"

    const-string v3, "D"

    const-string v4, "F"

    const-string v5, "G"

    const-string v6, "H"

    const-string v7, "J"

    const-string v8, "K"

    const-string v9, "L"

    .line 56
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    const-string v1, "Z"

    const-string v2, "X"

    const-string v3, "C"

    const-string v4, "V"

    const-string v5, "B"

    const-string v6, "N"

    const-string v7, "M"

    .line 58
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "0"

    .line 61
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_0:[Ljava/lang/String;

    const-string v1, "~"

    const-string v2, "!"

    const-string v3, "@"

    const-string v4, "#"

    const-string v5, "%"

    const-string v6, "\'"

    const-string v7, "&"

    const-string v8, "*"

    const-string v9, "?"

    .line 63
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_1:[Ljava/lang/String;

    const-string v1, "("

    const-string v2, ")"

    const-string v3, "-"

    const-string v4, "_"

    const-string v5, ":"

    const-string v6, ";"

    const-string v7, "/"

    .line 65
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_2:[Ljava/lang/String;

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "0"

    .line 68
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    const-string v1, "<"

    const-string v2, ">"

    const-string v3, "+"

    const-string v4, "="

    const-string v5, "\u00f7"

    const-string v6, "^"

    const-string v7, "`"

    const-string v8, "["

    const-string v9, "]"

    .line 70
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    const-string v1, "\\"

    const-string v2, "|"

    const-string v3, "\""

    const-string v4, "$"

    const-string v5, "\uffe5"

    const-string v6, "{"

    const-string v7, "}"

    .line 72
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 113
    iput-wide v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    const/4 v1, 0x0

    .line 115
    iput v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    .line 86
    iput-object p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 88
    sget v1, Lcom/alipay/android/safepaysdk/R$layout;->keyboard_qwerty:I

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    .line 89
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    .line 90
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->initialize(Landroid/content/Context;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->initializeTips(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 19
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    move-object/from16 v0, p0

    .line 123
    iget-object v1, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    .line 128
    iget-wide v6, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double v10, v6, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v12

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v10

    double-to-int v4, v4

    div-int/lit8 v4, v4, 0xa

    iput v4, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    .line 129
    iget v4, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    int-to-double v10, v4

    const-wide v14, 0x3fe4cccccccccccdL    # 0.65

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v14

    double-to-float v5, v10

    iput v5, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    int-to-double v4, v4

    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    mul-double v14, v6, v10

    mul-double v14, v14, v12

    .line 131
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v14

    const-wide v14, 0x3ff7333333333333L    # 1.45

    mul-double v4, v4, v14

    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    mul-double v14, v14, v6

    mul-double v14, v14, v12

    add-double/2addr v4, v14

    double-to-int v4, v4

    mul-int/lit8 v5, v4, 0x4

    int-to-double v14, v5

    int-to-double v10, v2

    const-wide v17, 0x3fd6666666666666L    # 0.35

    .line 133
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v17

    const-wide/high16 v17, 0x4010000000000000L    # 4.0

    cmpl-double v2, v14, v10

    if-lez v2, :cond_0

    div-double v10, v10, v17

    double-to-int v4, v10

    int-to-double v10, v4

    const-wide/high16 v14, 0x4022000000000000L    # 9.0

    mul-double v14, v14, v6

    mul-double v14, v14, v12

    .line 136
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v14

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double v6, v6, v14

    sub-double/2addr v10, v6

    double-to-float v2, v10

    iput v2, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    .line 138
    :cond_0
    iget v2, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    mul-int/lit8 v5, v2, 0x7

    sub-int/2addr v3, v5

    int-to-double v5, v3

    iget-wide v10, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    mul-double v8, v8, v10

    mul-double v8, v8, v12

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v8

    const-wide/high16 v7, 0x4012000000000000L    # 4.5

    mul-double v10, v10, v7

    mul-double v10, v10, v17

    sub-double/2addr v5, v10

    double-to-int v3, v5

    const/4 v5, 0x2

    div-int/2addr v3, v5

    mul-int/lit8 v6, v2, 0x4

    add-int/2addr v2, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_c

    .line 145
    iget-object v9, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    if-nez v9, :cond_2

    :cond_1
    const/4 v12, 0x2

    goto/16 :goto_9

    .line 150
    :cond_2
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 151
    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v10, 0x1

    .line 152
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 153
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    if-nez v8, :cond_3

    .line 156
    new-array v10, v11, [Landroid/widget/TextView;

    iput-object v10, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_1

    .line 158
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 159
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 160
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 161
    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 163
    invoke-virtual {v13, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 164
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    invoke-virtual {v14, v7, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    new-instance v15, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v15}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 166
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    iget-object v13, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    aput-object v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    if-ne v8, v10, :cond_4

    .line 170
    new-array v10, v11, [Landroid/widget/TextView;

    iput-object v10, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_1

    .line 172
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 174
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 175
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 176
    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 178
    invoke-virtual {v13, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 179
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    invoke-virtual {v14, v7, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    new-instance v15, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v15}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 181
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    iget-object v13, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    aput-object v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    if-ne v8, v5, :cond_7

    add-int/lit8 v10, v11, -0x2

    .line 185
    new-array v10, v10, [Landroid/widget/TextView;

    iput-object v10, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v11, :cond_1

    .line 187
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 189
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v10, :cond_5

    .line 192
    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 193
    iput-object v13, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    goto :goto_4

    :cond_5
    add-int/lit8 v15, v11, -0x1

    if-ne v10, v15, :cond_6

    .line 195
    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_4

    .line 197
    :cond_6
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 198
    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 199
    invoke-virtual {v13, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 200
    iget v5, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    invoke-virtual {v15, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 201
    new-instance v5, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 202
    iget-object v5, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    add-int/lit8 v16, v10, -0x1

    aput-object v15, v5, v16

    .line 203
    iget v5, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    iput v5, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 206
    :goto_4
    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 207
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x2

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v11, :cond_1

    .line 211
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 212
    new-instance v14, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v14}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v13, v14}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 214
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v5, :cond_8

    .line 217
    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 218
    move-object v15, v13

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_type:Landroid/widget/TextView;

    .line 219
    iget v12, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    invoke-virtual {v15, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_6
    const/4 v10, 0x0

    const/4 v12, 0x2

    goto :goto_8

    :cond_8
    if-ne v5, v10, :cond_9

    .line 221
    iget v12, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 222
    move-object v12, v13

    check-cast v12, Landroid/widget/FrameLayout;

    invoke-virtual {v12, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 223
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    invoke-virtual {v12, v7, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_6

    :cond_9
    const/4 v12, 0x2

    if-ne v5, v12, :cond_a

    .line 225
    iput v6, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 226
    move-object v15, v13

    check-cast v15, Landroid/widget/FrameLayout;

    invoke-virtual {v15, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 227
    iget v10, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    invoke-virtual {v15, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_7
    const/4 v10, 0x0

    goto :goto_8

    :cond_a
    const/4 v10, 0x3

    if-ne v5, v10, :cond_b

    .line 229
    iget v10, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 230
    move-object v10, v13

    check-cast v10, Landroid/widget/FrameLayout;

    invoke-virtual {v10, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 231
    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    invoke-virtual {v10, v7, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_7

    .line 233
    :cond_b
    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 234
    move-object v10, v13

    check-cast v10, Landroid/widget/TextView;

    iget v15, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    invoke-virtual {v10, v7, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_7

    .line 237
    :goto_8
    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 238
    invoke-virtual {v13, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto :goto_5

    :goto_9
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private initializeTips(Landroid/content/Context;)V
    .locals 5

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    .line 96
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    .line 97
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x33

    .line 98
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x2

    .line 99
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 100
    iget v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->width:I

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-int v0, v0

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 101
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 102
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    sget v0, Lcom/alipay/android/safepaysdk/R$drawable;->keyborad_show:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 105
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private onTouchDown(Landroid/view/View;)Z
    .locals 3

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 281
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_del1:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onDel()V

    goto :goto_2

    .line 283
    :cond_0
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_enter:I

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 285
    :cond_1
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_space:I

    if-ne v0, v1, :cond_2

    const-string p1, " "

    .line 286
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_2

    .line 287
    :cond_2
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_ABC:I

    if-ne v0, v1, :cond_4

    .line 288
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->down:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    :goto_0
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    .line 289
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->switchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;)V

    goto :goto_2

    .line 290
    :cond_4
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_123:I

    if-ne v0, v1, :cond_6

    .line 291
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    :goto_1
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    .line 292
    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    .line 293
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->qwertType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->shiftType:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->switchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;)V

    goto :goto_2

    .line 295
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    .line 296
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 297
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->showInputTips(Landroid/view/View;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onInput(Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method private onTouchUp(Landroid/view/View;)Z
    .locals 1

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 267
    sget v0, Lcom/alipay/android/safepaysdk/R$id;->key_enter:I

    if-ne p1, v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onOK()V

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private showInputTips(Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    .line 306
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    .line 311
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 312
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->cashierContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->getRelatePoint(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    .line 313
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 314
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    iget-wide v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->screen_density:D

    mul-double v3, v3, v5

    double-to-int p1, v3

    add-int/2addr v1, p1

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    mul-double v5, v5, v3

    double-to-int p1, v5

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    .line 315
    invoke-virtual {v0, v2, v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 316
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->inputTips:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private switchKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;)V
    .locals 5

    .line 327
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    const-string v1, "123"

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    .line 328
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_type:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    if-ne p2, p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget p2, Lcom/alipay/android/safepaysdk/R$drawable;->keyboard_key_shift_up:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_0:[Ljava/lang/String;

    .line 336
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_1:[Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_UP_ROW_2:[Ljava/lang/String;

    goto :goto_0

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget p2, Lcom/alipay/android/safepaysdk/R$drawable;->keyboard_key_shift_down:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    .line 342
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_ABC_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    goto :goto_0

    .line 346
    :cond_1
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 349
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->textSize:F

    invoke-virtual {p1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 352
    :cond_2
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_type:Landroid/widget/TextView;

    const-string v0, "abc"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    sget-object p1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    if-ne p2, p1, :cond_3

    .line 355
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_0:[Ljava/lang/String;

    .line 357
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_1:[Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_UP_ROW_2:[Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_3
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->ib_shift:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "#+="

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_0:[Ljava/lang/String;

    .line 362
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_1:[Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->QWERT_123_SHIFT_DOWN_ROW_2:[Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    .line 367
    :goto_1
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row1:[Landroid/widget/TextView;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 368
    aget-object v2, v2, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 371
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row2:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge p1, v2, :cond_5

    .line 372
    aget-object v1, v1, p1

    aget-object v2, p2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 375
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->tv_row3:[Landroid/widget/TextView;

    array-length p2, p1

    if-ge v4, p2, :cond_6

    .line 376
    aget-object p1, p1, v4

    aget-object p2, v0, v4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onTouchDown(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 253
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 254
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->onTouchUp(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
