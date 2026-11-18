.class public Lcom/alibaba/ailabs/tg/utils/SpanUtils;
.super Ljava/lang/Object;
.source "SpanUtils.java"


# static fields
.field private static final COLOR_DEFAULT:I = -0x1000001

.field private static final LINE_SEPARATOR:Ljava/lang/String;


# instance fields
.field private backgroundColor:I

.field private clickSpan:Landroid/text/style/ClickableSpan;

.field private flag:I

.field private fontSize:I

.field private fontSizeIsDp:Z

.field private foregroundColor:I

.field private isBold:Z

.field private isBoldItalic:Z

.field private isItalic:Z

.field private mBuilder:Landroid/text/SpannableStringBuilder;

.field private mText:Ljava/lang/CharSequence;

.field private mType:I

.field private final mTypeCharSequence:I

.field private spans:[Ljava/lang/Object;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 44
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->LINE_SEPARATOR:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mTypeCharSequence:I

    .line 66
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    const-string v0, ""

    .line 67
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mText:Ljava/lang/CharSequence;

    .line 68
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->setDefault()V

    return-void
.end method

.method private apply(I)V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->applyLast()V

    .line 252
    iput p1, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mType:I

    return-void
.end method

.method private applyLast()V
    .locals 1

    .line 266
    iget v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mType:I

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->updateCharCharSequence()V

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->setDefault()V

    return-void
.end method

.method public static setBackgroundSpan(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_3

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    const/16 p2, 0x21

    .line 35
    invoke-virtual {v0, v1, p3, p1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 31
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setDefault()V
    .locals 1

    const/16 v0, 0x21

    .line 72
    iput v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->flag:I

    const v0, -0x1000001

    .line 73
    iput v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->foregroundColor:I

    .line 74
    iput v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->backgroundColor:I

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->fontSize:I

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->isBold:Z

    .line 77
    iput-boolean v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->isItalic:Z

    .line 78
    iput-boolean v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->isBoldItalic:Z

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->clickSpan:Landroid/text/style/ClickableSpan;

    .line 80
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->url:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->spans:[Ljava/lang/Object;

    return-void
.end method

.method private updateCharCharSequence()V
    .locals 8

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 276
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 277
    iget v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->foregroundColor:I

    const v3, -0x1000001

    if-eq v2, v3, :cond_1

    .line 278
    iget-object v4, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->flag:I

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 280
    :cond_1
    iget v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->backgroundColor:I

    if-eq v2, v3, :cond_2

    .line 281
    iget-object v3, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v4, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->flag:I

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 284
    :cond_2
    iget v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->fontSize:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 285
    iget-object v3, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    iget-boolean v5, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->fontSizeIsDp:Z

    invoke-direct {v4, v2, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->flag:I

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 287
    :cond_3
    iget-boolean v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->isBold:Z

    if-eqz v2, :cond_4

    .line 288
    iget-object v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v4, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->flag:I

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 290
    :cond_4
    iget-boolean v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->isItalic:Z

    if-eqz v2, :cond_5

    .line 291
    iget-object v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v4, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->flag:I

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 293
    :cond_5
    iget-boolean v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->isBoldItalic:Z

    if-eqz v2, :cond_6

    .line 294
    iget-object v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v4, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->flag:I

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 296
    :cond_6
    iget-object v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->clickSpan:Landroid/text/style/ClickableSpan;

    if-eqz v2, :cond_7

    .line 297
    iget-object v3, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->flag:I

    invoke-virtual {v3, v2, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 299
    :cond_7
    iget-object v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->url:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 300
    iget-object v3, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/URLSpan;

    invoke-direct {v4, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->flag:I

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 302
    :cond_8
    iget-object v2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->spans:[Ljava/lang/Object;

    if-eqz v2, :cond_9

    .line 303
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_9

    aget-object v5, v2, v4

    .line 304
    iget-object v6, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->flag:I

    invoke-virtual {v6, v5, v0, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->apply(I)V

    .line 223
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public appendLine()Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->apply(I)V

    .line 234
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->LINE_SEPARATOR:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public appendLine(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->apply(I)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public create()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 261
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->applyLast()V

    .line 262
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->mBuilder:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public setBackgroundColor(I)Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 119
    iput p1, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->backgroundColor:I

    return-object p0
.end method

.method public setBold()Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 1

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->isBold:Z

    return-object p0
.end method

.method public setBoldItalic()Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 1

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->isBoldItalic:Z

    return-object p0
.end method

.method public setClickSpan(Landroid/text/style/ClickableSpan;)Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 0
    .param p1    # Landroid/text/style/ClickableSpan;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 185
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->clickSpan:Landroid/text/style/ClickableSpan;

    return-object p0
.end method

.method public setFlag(I)Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 0

    .line 97
    iput p1, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->flag:I

    return-object p0
.end method

.method public setFontSize(I)Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->setFontSize(IZ)Lcom/alibaba/ailabs/tg/utils/SpanUtils;

    move-result-object p1

    return-object p1
.end method

.method public setFontSize(IZ)Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 142
    iput p1, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->fontSize:I

    .line 143
    iput-boolean p2, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->fontSizeIsDp:Z

    return-object p0
.end method

.method public setForegroundColor(I)Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 108
    iput p1, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->foregroundColor:I

    return-object p0
.end method

.method public setItalic()Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 1

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->isItalic:Z

    return-object p0
.end method

.method public varargs setSpans([Ljava/lang/Object;)Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    array-length v0, p1

    if-lez v0, :cond_0

    .line 210
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->spans:[Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/tg/utils/SpanUtils;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/utils/SpanUtils;->url:Ljava/lang/String;

    return-object p0
.end method
