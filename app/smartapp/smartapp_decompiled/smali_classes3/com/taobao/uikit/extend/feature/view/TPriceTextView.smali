.class public Lcom/taobao/uikit/extend/feature/view/TPriceTextView;
.super Lcom/taobao/uikit/feature/view/TTextView;
.source "TPriceTextView.java"


# static fields
.field private static final DECIMAL_TEXT_FONT_RATIO:F = 0.75f

.field private static final TEXT_COLOR:I = -0xb000


# instance fields
.field private mDecimalNumRatio:F

.field private mDollarRatio:F

.field private mPrice:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/view/TTextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f400000    # 0.75f

    .line 26
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDollarRatio:F

    .line 28
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDecimalNumRatio:F

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mPrice:F

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/taobao/uikit/feature/view/TTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f400000    # 0.75f

    .line 26
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDollarRatio:F

    .line 28
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDecimalNumRatio:F

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mPrice:F

    const/4 p1, 0x0

    .line 41
    invoke-direct {p0, p2, p1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/feature/view/TTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f400000    # 0.75f

    .line 26
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDollarRatio:F

    .line 28
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDecimalNumRatio:F

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mPrice:F

    .line 35
    invoke-direct {p0, p2, p3}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private fixSpan(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_3

    const-string v0, "."

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_3

    const-string v2, "\u4e07"

    .line 247
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string v2, "\u4ebf"

    .line 249
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :cond_1
    if-ne v1, v2, :cond_2

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 256
    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 257
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    iget v3, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDecimalNumRatio:F

    invoke-direct {p1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v3, 0x21

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 258
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/taobao/uikit/extend/R$styleable;->TPriceTextView:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TPriceTextView_uik_price:I

    iget v0, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mPrice:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mPrice:F

    .line 58
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TPriceTextView_uik_dollar_ratio:I

    iget v0, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDollarRatio:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDollarRatio:F

    .line 59
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TPriceTextView_uik_decimal_ratio:I

    iget v0, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDecimalNumRatio:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDecimalNumRatio:F

    .line 60
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TPriceTextView_android_textColor:I

    const v0, -0xb000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setTextColor(I)V

    .line 61
    iget p2, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDollarRatio:F

    invoke-virtual {p0, p2}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setDollarRatio(F)V

    .line 62
    iget p2, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDecimalNumRatio:F

    invoke-virtual {p0, p2}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setDecimalNumRatio(F)V

    .line 63
    iget p2, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mPrice:F

    invoke-virtual {p0, p2}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setPrice(F)V

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private setFestivalPrice(Ljava/lang/String;)V
    .locals 8

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x9

    if-lt v3, v6, :cond_0

    add-int/lit8 v6, v3, -0x8

    .line 107
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x7

    .line 110
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u4ebf"

    .line 112
    invoke-virtual {v0, v5, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v6, 0x5

    if-lt v3, v6, :cond_1

    add-int/lit8 v6, v3, -0x4

    .line 116
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v4

    .line 119
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u4e07"

    .line 121
    invoke-virtual {v0, v5, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    if-ne v3, v2, :cond_2

    .line 125
    invoke-virtual {v1, v5, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-lt v2, v4, :cond_3

    add-int/2addr v3, v4

    .line 128
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v5, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 136
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".00"

    .line 138
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string v1, ".0"

    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 146
    :cond_5
    :goto_1
    invoke-virtual {v0, v5, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u00a5 "

    .line 147
    invoke-virtual {v0, v5, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 156
    iget v0, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDollarRatio:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_7

    .line 158
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 159
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    if-le v0, v3, :cond_6

    .line 161
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    iget v1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDollarRatio:F

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v1, 0x21

    invoke-interface {p1, v0, v5, v3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 163
    :cond_6
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public setDecimalNumRatio(F)V
    .locals 1

    .line 279
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDecimalNumRatio:F

    .line 280
    iget p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mPrice:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 281
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setPrice(F)V

    :cond_0
    return-void
.end method

.method public setDollarRatio(F)V
    .locals 1

    .line 271
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDollarRatio:F

    .line 272
    iget p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mPrice:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setPrice(F)V

    :cond_0
    return-void
.end method

.method public setPrice(F)V
    .locals 5

    .line 169
    iput p1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mPrice:F

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#0.0"

    const v2, 0x4cbebc20    # 1.0E8f

    const/4 v3, 0x0

    cmpl-float v4, p1, v2

    if-ltz v4, :cond_0

    div-float/2addr p1, v2

    const-string v2, "\u4ebf"

    .line 177
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const v2, 0x461c4000    # 10000.0f

    cmpl-float v4, p1, v2

    if-ltz v4, :cond_1

    div-float/2addr p1, v2

    const-string v2, "\u4e07"

    .line 182
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "#0.00"

    .line 187
    :goto_0
    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2}, Ljava/text/DecimalFormatSymbols;-><init>()V

    const/16 v4, 0x2e

    .line 188
    invoke-virtual {v2, v4}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 190
    new-instance v4, Ljava/text/DecimalFormat;

    invoke-direct {v4, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    float-to-double v1, p1

    .line 192
    invoke-virtual {v4, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string v1, ".00"

    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const-string v1, ".0"

    .line 199
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 207
    :goto_2
    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u00a5 "

    .line 208
    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->fixSpan(Ljava/lang/String;)V

    goto :goto_3

    .line 216
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 220
    iget v0, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDollarRatio:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_6

    .line 222
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 223
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 225
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    iget v1, p0, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->mDollarRatio:F

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v1, 0x21

    invoke-interface {p1, v0, v3, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 227
    :cond_5
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 2

    const-string v0, "^[0-9]+[.]*[0-9]*"

    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "(^([0-9]|[/?])+[.]*([0-9]|[/?])*)"

    .line 77
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 79
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 80
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setPrice(F)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setFestivalPrice(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 265
    invoke-super {p0, p1, p2}, Lcom/taobao/uikit/feature/view/TTextView;->setTextSize(IF)V

    const/4 p1, 0x0

    .line 266
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TPriceTextView;->fixSpan(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
