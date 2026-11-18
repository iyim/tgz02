.class public Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
.super Ljava/lang/Object;
.source "SpannableStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private align:Landroid/text/Layout$Alignment;

.field private backgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private bitmap:Landroid/graphics/Bitmap;

.field private bulletColor:I

.field private clickSpan:Landroid/text/style/ClickableSpan;

.field private defaultValue:I

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private first:I

.field private flag:I

.field private fontFamily:Ljava/lang/String;

.field private foregroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private gapWidth:I

.field private imageIsBitmap:Z

.field private imageIsDrawable:Z

.field private imageIsResourceId:Z

.field private imageIsUri:Z

.field private isBlur:Z

.field private isBold:Z

.field private isBoldItalic:Z

.field private isBullet:Z

.field private isItalic:Z

.field private isLeadingMargin:Z

.field private isStrikethrough:Z

.field private isSubscript:Z

.field private isSuperscript:Z

.field private isUnderline:Z

.field private mBuilder:Landroid/text/SpannableStringBuilder;

.field private proportion:F

.field private quoteColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private radius:F

.field private resourceId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private rest:I

.field private style:Landroid/graphics/BlurMaskFilter$Blur;

.field private text:Ljava/lang/CharSequence;

.field private uri:Landroid/net/Uri;

.field private url:Ljava/lang/String;

.field private xProportion:F


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x12000000

    .line 60
    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->defaultValue:I

    .line 112
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->text:Ljava/lang/CharSequence;

    const/16 p1, 0x21

    .line 113
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    .line 114
    iget p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->defaultValue:I

    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->foregroundColor:I

    .line 115
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->backgroundColor:I

    .line 116
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->quoteColor:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 117
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->proportion:F

    .line 118
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->xProportion:F

    .line 119
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;-><init>(Ljava/lang/CharSequence;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setSpan()V
    .locals 8

    .line 440
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 441
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 442
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 443
    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->foregroundColor:I

    iget v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->defaultValue:I

    if-eq v2, v3, :cond_0

    .line 444
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 445
    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->defaultValue:I

    iput v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->foregroundColor:I

    .line 447
    :cond_0
    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->backgroundColor:I

    iget v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->defaultValue:I

    if-eq v2, v3, :cond_1

    .line 448
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v4, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 449
    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->defaultValue:I

    iput v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->backgroundColor:I

    .line 451
    :cond_1
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isLeadingMargin:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 452
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/LeadingMarginSpan$Standard;

    iget v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->first:I

    iget v6, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->rest:I

    invoke-direct {v4, v5, v6}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    iget v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 453
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isLeadingMargin:Z

    .line 455
    :cond_2
    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->quoteColor:I

    iget v4, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->defaultValue:I

    if-eq v2, v4, :cond_3

    .line 456
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/QuoteSpan;

    invoke-direct {v5, v2}, Landroid/text/style/QuoteSpan;-><init>(I)V

    invoke-virtual {v4, v5, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 457
    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->defaultValue:I

    iput v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->quoteColor:I

    .line 459
    :cond_3
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isBullet:Z

    if-eqz v2, :cond_4

    .line 460
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/BulletSpan;

    iget v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->gapWidth:I

    iget v6, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->bulletColor:I

    invoke-direct {v4, v5, v6}, Landroid/text/style/BulletSpan;-><init>(II)V

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 461
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isBullet:Z

    .line 463
    :cond_4
    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->proportion:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_5

    .line 464
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v6, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 465
    iput v4, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->proportion:F

    .line 467
    :cond_5
    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->xProportion:F

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_6

    .line 468
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/ScaleXSpan;

    invoke-direct {v6, v2}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 469
    iput v4, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->xProportion:F

    .line 471
    :cond_6
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isStrikethrough:Z

    if-eqz v2, :cond_7

    .line 472
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    iget v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 473
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isStrikethrough:Z

    .line 475
    :cond_7
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isUnderline:Z

    if-eqz v2, :cond_8

    .line 476
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 477
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isUnderline:Z

    .line 479
    :cond_8
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isSuperscript:Z

    if-eqz v2, :cond_9

    .line 480
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v4}, Landroid/text/style/SuperscriptSpan;-><init>()V

    iget v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 481
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isSuperscript:Z

    .line 483
    :cond_9
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isSubscript:Z

    if-eqz v2, :cond_a

    .line 484
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/SubscriptSpan;

    invoke-direct {v4}, Landroid/text/style/SubscriptSpan;-><init>()V

    iget v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 485
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isSubscript:Z

    .line 487
    :cond_a
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isBold:Z

    if-eqz v2, :cond_b

    .line 488
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 489
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isBold:Z

    .line 491
    :cond_b
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isItalic:Z

    if-eqz v2, :cond_c

    .line 492
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 493
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isItalic:Z

    .line 495
    :cond_c
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isBoldItalic:Z

    if-eqz v2, :cond_d

    .line 496
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 497
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isBoldItalic:Z

    .line 499
    :cond_d
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->fontFamily:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_e

    .line 500
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/TypefaceSpan;

    invoke-direct {v6, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 501
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->fontFamily:Ljava/lang/String;

    .line 503
    :cond_e
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->align:Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_f

    .line 504
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v6, v2}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 505
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->align:Landroid/text/Layout$Alignment;

    .line 507
    :cond_f
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsBitmap:Z

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsDrawable:Z

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsUri:Z

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsResourceId:Z

    if-eqz v2, :cond_14

    .line 508
    :cond_10
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsBitmap:Z

    if-eqz v2, :cond_11

    .line 509
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iget v6, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 510
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 511
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsBitmap:Z

    goto :goto_0

    .line 512
    :cond_11
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsDrawable:Z

    if-eqz v2, :cond_12

    .line 513
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ImageSpan;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget v6, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 514
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->drawable:Landroid/graphics/drawable/Drawable;

    .line 515
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsDrawable:Z

    goto :goto_0

    .line 516
    :cond_12
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsUri:Z

    if-eqz v2, :cond_13

    .line 517
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->uri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget v6, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 518
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->uri:Landroid/net/Uri;

    .line 519
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsUri:Z

    goto :goto_0

    .line 521
    :cond_13
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->resourceId:I

    invoke-direct {v5, v6, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    iget v6, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v5, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 522
    iput v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->resourceId:I

    .line 523
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsResourceId:Z

    .line 526
    :cond_14
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->clickSpan:Landroid/text/style/ClickableSpan;

    if-eqz v2, :cond_15

    .line 527
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v5, v2, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 528
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->clickSpan:Landroid/text/style/ClickableSpan;

    .line 530
    :cond_15
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->url:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 531
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/URLSpan;

    invoke-direct {v6, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 532
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->url:Ljava/lang/String;

    .line 534
    :cond_16
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isBlur:Z

    if-eqz v2, :cond_17

    .line 535
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/MaskFilterSpan;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    iget v6, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->radius:F

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->style:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-direct {v4, v5}, Landroid/text/style/MaskFilterSpan;-><init>(Landroid/graphics/MaskFilter;)V

    iget v5, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 536
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isBlur:Z

    :cond_17
    const/16 v0, 0x21

    .line 538
    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 421
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setSpan()V

    .line 422
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public create()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 432
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->setSpan()V

    .line 433
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->mBuilder:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public setAlign(Landroid/text/Layout$Alignment;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 318
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->align:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 156
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->backgroundColor:I

    return-object p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 329
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsBitmap:Z

    return-object p0
.end method

.method public setBlur(FLandroid/graphics/BlurMaskFilter$Blur;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0

    .line 408
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->radius:F

    .line 409
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->style:Landroid/graphics/BlurMaskFilter$Blur;

    const/4 p1, 0x1

    .line 410
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isBlur:Z

    return-object p0
.end method

.method public setBold()Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isBold:Z

    return-object p0
.end method

.method public setBoldItalic()Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isBoldItalic:Z

    return-object p0
.end method

.method public setBullet(II)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0

    .line 193
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->gapWidth:I

    .line 194
    iput p2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->bulletColor:I

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isBullet:Z

    return-object p0
.end method

.method public setClickSpan(Landroid/text/style/ClickableSpan;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0
    .param p1    # Landroid/text/style/ClickableSpan;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 377
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->clickSpan:Landroid/text/style/ClickableSpan;

    return-object p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 341
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 342
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsDrawable:Z

    return-object p0
.end method

.method public setFlag(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0

    .line 134
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->flag:I

    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 303
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->fontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public setForegroundColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 145
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->foregroundColor:I

    return-object p0
.end method

.method public setItalic()Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isItalic:Z

    return-object p0
.end method

.method public setLeadingMargin(II)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0

    .line 179
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->first:I

    .line 180
    iput p2, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->rest:I

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isLeadingMargin:Z

    return-object p0
.end method

.method public setProportion(F)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0

    .line 206
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->proportion:F

    return-object p0
.end method

.method public setQuoteColor(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 167
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->quoteColor:I

    return-object p0
.end method

.method public setResourceId(I)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 365
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->resourceId:I

    const/4 p1, 0x1

    .line 366
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsResourceId:Z

    return-object p0
.end method

.method public setStrikethrough()Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isStrikethrough:Z

    return-object p0
.end method

.method public setSubscript()Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isSubscript:Z

    return-object p0
.end method

.method public setSuperscript()Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isSuperscript:Z

    return-object p0
.end method

.method public setUnderline()Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->isUnderline:Z

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 353
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->uri:Landroid/net/Uri;

    const/4 p1, 0x1

    .line 354
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->imageIsUri:Z

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 389
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setXProportion(F)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 0

    .line 217
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;->xProportion:F

    return-object p0
.end method
