.class public Lcom/alipay/mobile/verifyidentity/ui/APTextView;
.super Landroid/widget/TextView;
.source "APTextView.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/ui/APViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;
    }
.end annotation


# static fields
.field private static i:Lcom/alipay/mobile/verifyidentity/ui/emotion/OnParseEmotionListener;

.field private static j:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Z

.field private e:F

.field private f:I

.field private g:Z

.field private h:I

.field private k:Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->c:I

    .line 30
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->d:Z

    const/16 p1, 0x270f

    .line 35
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->h:I

    .line 62
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->e:F

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->a()V

    .line 64
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->c:I

    .line 30
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->d:Z

    const/16 v0, 0x270f

    .line 35
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->h:I

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 28
    iput p3, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->c:I

    .line 30
    iput-boolean p3, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->d:Z

    const/16 p3, 0x270f

    .line 35
    iput p3, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->h:I

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 125
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->j:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;->getCurrentGear()I

    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->e:F

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 128
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->getTextSize(FI)F

    move-result v0

    .line 129
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getTextSize()F

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 130
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->isValueEqule(FF)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 131
    invoke-super {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 4

    .line 113
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    .line 114
    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 116
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->b(I)V

    .line 120
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->e:F

    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->a()V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->h:I

    int-to-float v1, v1

    .line 217
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    .line 216
    invoke-static {p1, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 218
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method private b()I
    .locals 3

    const/4 v0, 0x0

    .line 231
    :try_start_0
    const-class v1, Landroid/widget/TextView;

    const-string v2, "mSingleLine"

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 237
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    :catch_1
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private b(I)V
    .locals 2

    .line 169
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->h:I

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_0

    .line 170
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->h:I

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->h:I

    :goto_0
    return-void
.end method

.method public static getParseEmotionListener()Lcom/alipay/mobile/verifyidentity/ui/emotion/OnParseEmotionListener;
    .locals 1

    .line 275
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->i:Lcom/alipay/mobile/verifyidentity/ui/emotion/OnParseEmotionListener;

    return-object v0
.end method

.method public static getTextSizeGearGetter()Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;
    .locals 1

    .line 284
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->j:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    return-object v0
.end method

.method public static setParseEmotionListener(Lcom/alipay/mobile/verifyidentity/ui/emotion/OnParseEmotionListener;)V
    .locals 0

    .line 280
    sput-object p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->i:Lcom/alipay/mobile/verifyidentity/ui/emotion/OnParseEmotionListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTextSizeGearGetter(Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;)V
    .locals 0

    .line 288
    sput-object p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->j:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getEmojiSize()I
    .locals 3

    .line 259
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->c:I

    if-gtz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getOnTextChangeListener()Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->k:Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;

    return-object v0
.end method

.method public isDynamicTextSize()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->d:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 153
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 154
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->a()V

    .line 155
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->a:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->f:I

    if-gtz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->b:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->g:Z

    if-eqz p1, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 156
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->b()I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    return-void

    :cond_2
    sub-int/2addr p4, p2

    .line 160
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getLeftPaddingOffset()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getRightPaddingOffset()I

    move-result p1

    sub-int/2addr p4, p1

    .line 161
    iget p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->h:I

    const/16 p2, 0x270f

    if-eq p1, p2, :cond_3

    .line 162
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 164
    :cond_3
    invoke-direct {p0, p4}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->a(I)V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 138
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->b:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 140
    sget-object p2, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->j:Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;

    if-eqz p2, :cond_0

    .line 141
    invoke-interface {p2}, Lcom/alipay/mobile/verifyidentity/ui/font/TextSizeGearGetter;->getCurrentGear()I

    move-result v1

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p2, v0}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2, v1}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->getTextSize(FI)F

    move-result p2

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getTextSize()F

    move-result v0

    add-float/2addr v0, p2

    float-to-int p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 145
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setDynamicTextSize(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->d:Z

    return-void
.end method

.method public setEmojiSize(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->c:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 93
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper;->wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnTextChangeListener(Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->k:Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;

    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->a:Z

    return-void
.end method

.method public setSupportEmotion(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->b:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4

    .line 178
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->b:Z

    if-eqz v0, :cond_5

    :cond_0
    if-eqz p1, :cond_5

    .line 180
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 181
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->b:Z

    if-eqz v1, :cond_1

    .line 182
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->i:Lcom/alipay/mobile/verifyidentity/ui/emotion/OnParseEmotionListener;

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getEmojiSize()I

    move-result v3

    invoke-interface {v1, v2, v0, p1, v3}, Lcom/alipay/mobile/verifyidentity/ui/emotion/OnParseEmotionListener;->parser(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->g:Z

    .line 186
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->f:I

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->g:Z

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 187
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 189
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->a(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 191
    :cond_3
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 194
    :cond_4
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 197
    :goto_0
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->k:Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 199
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-interface {p2, p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;->onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 203
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->k:Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 205
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;->onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->e:F

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->a()V

    return-void
.end method
