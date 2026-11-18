.class public Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;
.super Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.source "DXFastTextWidgetNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode$Builder;,
        Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode$DXTextLineBreakMode;,
        Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode$DXTextGravity;,
        Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode$DXTextStyle;
    }
.end annotation


# static fields
.field public static DEFAULT_MAX_LINE:I = 0x1

.field public static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field public static DEFAULT_TEXT_SIZE:I

.field public static final ELLIPSIS_TEXT:Ljava/lang/CharSequence;


# instance fields
.field alignment:Landroid/text/Layout$Alignment;

.field ellipsize:Landroid/text/TextUtils$TruncateAt;

.field lineBreakMode:I

.field lineHeight:I

.field lineSpacing:I

.field maxLine:I

.field maxWidth:I

.field realPaddingBottom:I

.field realPaddingTop:I

.field showText:Ljava/lang/CharSequence;

.field staticLayout:Landroid/text/StaticLayout;

.field text:Ljava/lang/CharSequence;

.field textColor:I

.field textFlags:I

.field textGravity:I

.field textPaint:Landroid/text/TextPaint;

.field textSize:F

.field textStyle:I

.field translateY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u2026"

    .line 37
    sput-object v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ELLIPSIS_TEXT:Ljava/lang/CharSequence;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 3

    .line 102
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;-><init>()V

    const-string v0, ""

    .line 61
    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 72
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineHeight:I

    .line 74
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineSpacing:I

    .line 103
    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    const/high16 v0, -0x1000000

    .line 104
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textColor:I

    .line 105
    sget v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->DEFAULT_TEXT_SIZE:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v0, v2}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->DEFAULT_TEXT_SIZE:I

    .line 108
    :cond_0
    sget v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->DEFAULT_TEXT_SIZE:I

    int-to-float v0, v0

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textSize:F

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textStyle:I

    .line 110
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineBreakMode:I

    .line 111
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textGravity:I

    .line 112
    sget v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->DEFAULT_MAX_LINE:I

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    const v0, 0x7fffffff

    .line 113
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxWidth:I

    return-void
.end method

.method private calculateEllipsizeText()V
    .locals 11

    .line 187
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    :try_start_0
    const-string v2, ""

    .line 190
    iput-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;

    return-void

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v2, :cond_1

    goto/16 :goto_7

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ELLIPSIS_TEXT:Ljava/lang/CharSequence;

    sget-object v5, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ELLIPSIS_TEXT:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 198
    iget-object v4, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    .line 199
    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    .line 204
    iget-object v5, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v5, v6, :cond_4

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-lt v2, v3, :cond_3

    .line 207
    iget-object v5, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-interface {v5, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 208
    iget-object v6, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v5, v1, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 213
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ELLIPSIS_TEXT:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;

    goto/16 :goto_9

    .line 214
    :cond_4
    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v5, :cond_7

    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    if-ne v3, v2, :cond_7

    .line 215
    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    :goto_2
    if-ltz v5, :cond_6

    .line 218
    iget-object v6, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v5, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    cmpl-float v6, v6, v4

    if-lez v6, :cond_5

    add-int/2addr v2, v5

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 223
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ELLIPSIS_TEXT:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-interface {v5, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;

    goto/16 :goto_9

    .line 224
    :cond_7
    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v5, :cond_e

    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    if-ne v3, v2, :cond_e

    .line 226
    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    move v7, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_4
    if-ge v5, v3, :cond_b

    if-eqz v6, :cond_9

    add-int/lit8 v8, v8, 0x1

    .line 235
    iget-object v6, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9, v1, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    add-float v9, v6, v10

    cmpl-float v9, v9, v4

    if-lez v9, :cond_8

    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    :cond_8
    move v9, v6

    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v7, -0x1

    .line 243
    iget-object v6, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    iget-object v10, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-virtual {v6, v10, v7, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    add-float v10, v9, v6

    cmpl-float v10, v10, v4

    if-lez v10, :cond_a

    add-int/2addr v7, v2

    goto :goto_6

    :cond_a
    move v10, v6

    const/4 v6, 0x1

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 250
    :cond_b
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ELLIPSIS_TEXT:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v7, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;

    goto :goto_9

    .line 195
    :cond_c
    :goto_7
    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v2

    .line 254
    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;

    .line 256
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    const v1, 0x13885

    const-string v3, "Pipeline_Detail_PerformMeasure"

    const-string v4, "Pipeline_Detail"

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getBizType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 257
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v5

    iput-object v5, v0, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 259
    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    invoke-direct {v5, v4, v3, v1}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 261
    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 263
    :cond_d
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    const-string v5, "dinamicx"

    invoke-direct {v0, v5}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 264
    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    invoke-direct {v5, v4, v3, v1}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    iget-object v1, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 270
    :goto_8
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 271
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_9
    return-void
.end method

.method private makeNewLayout(ILjava/lang/CharSequence;)Landroid/text/StaticLayout;
    .locals 16

    move-object/from16 v0, p0

    .line 566
    iget v1, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineSpacing:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 569
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getTextSize()F

    move-result v4

    .line 572
    iget-object v5, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v6, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    .line 573
    iget v6, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineHeight:I

    int-to-float v6, v6

    cmpl-float v6, v6, v5

    if-ltz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 576
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingTop()I

    move-result v7

    iput v7, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingTop:I

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingBottom()I

    move-result v7

    iput v7, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingBottom:I

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    if-nez v6, :cond_2

    sub-float v2, v5, v4

    .line 586
    iget v8, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineSpacing:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    .line 589
    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/4 v2, 0x0

    :cond_2
    if-eqz v6, :cond_4

    sub-float v2, v5, v4

    .line 604
    iget v4, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineHeight:I

    int-to-float v6, v4

    sub-float/2addr v6, v5

    sub-float/2addr v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v4, v4

    sub-float/2addr v4, v5

    add-float/2addr v4, v2

    div-float/2addr v4, v7

    float-to-int v2, v4

    .line 610
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 612
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingTop:I

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingBottom:I

    if-eqz v1, :cond_3

    add-int/2addr v4, v2

    .line 620
    iget v1, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineSpacing:I

    add-int/2addr v4, v1

    goto :goto_2

    :cond_3
    add-int/2addr v4, v2

    :goto_2
    int-to-float v1, v4

    move v7, v1

    move v14, v7

    const/4 v15, 0x0

    goto :goto_3

    :cond_4
    move v15, v2

    move v14, v7

    .line 635
    :goto_3
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v10, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    iget-object v12, v0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->alignment:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v8, v1

    move-object/from16 v9, p2

    move/from16 v11, p1

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v1
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 128
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;-><init>()V

    return-object p1
.end method

.method protected calculateTranslateY(I)F
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    .line 500
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingBottom:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_0

    sub-int/2addr v1, v0

    shr-int/lit8 p1, v1, 0x1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected getAlignment(I)Landroid/text/Layout$Alignment;
    .locals 3

    .line 532
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getDirection()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    .line 541
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p1

    .line 539
    :cond_0
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p1

    .line 537
    :cond_1
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p1

    .line 535
    :cond_2
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p1

    :cond_3
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    .line 552
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p1

    .line 550
    :cond_4
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p1

    .line 548
    :cond_5
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p1

    .line 546
    :cond_6
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p1
.end method

.method public getDefaultValueForIntAttr(J)I
    .locals 4

    const-wide v0, 0x4fa0a53cf9ff05cdL    # 3.764478093842622E75

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/high16 p1, -0x1000000

    return p1

    :cond_0
    const-wide v0, 0x5db0637a915fa268L    # 1.998478668458365E143

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 390
    sget p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->DEFAULT_TEXT_SIZE:I

    return p1

    :cond_1
    const-wide v0, 0x4104ac824834d149L    # 169360.28525699142

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 392
    sget p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->DEFAULT_MAX_LINE:I

    return p1

    :cond_2
    const-wide v0, -0x20e105d520229788L    # -1.5843832850867073E150

    const/4 v2, -0x1

    cmp-long v3, p1, v0

    if-nez v3, :cond_3

    return v2

    :cond_3
    const-wide v0, 0x547793880a65750bL    # 8.057385527336425E98

    cmp-long v3, p1, v0

    if-nez v3, :cond_4

    return v2

    .line 398
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result p1

    return p1
.end method

.method public getDefaultValueForStringAttr(J)Ljava/lang/String;
    .locals 3

    const-wide v0, 0x8e396ac59L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-string p1, ""

    return-object p1

    .line 407
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForStringAttr(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getEllipsize(I)Landroid/text/TextUtils$TruncateAt;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return-object v0

    .line 525
    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    .line 523
    :cond_1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    .line 521
    :cond_2
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getLineBreakMode()I
    .locals 1

    .line 661
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineBreakMode:I

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    .line 657
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 665
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxWidth:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 641
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textColor:I

    return v0
.end method

.method public getTextGravity()I
    .locals 1

    .line 653
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textGravity:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 645
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textSize:F

    return v0
.end method

.method public getTextStyle()I
    .locals 1

    .line 649
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textStyle:I

    return v0
.end method

.method protected getTypeface(I)Landroid/graphics/Typeface;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 349
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    .line 347
    :cond_0
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    .line 345
    :cond_1
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    .line 343
    :cond_2
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    .line 341
    :cond_3
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method protected initText()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 287
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v0, 0x0

    .line 289
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textColor:I

    const-string/jumbo v2, "textColor"

    invoke-virtual {p0, v2, v0, v1}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 292
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textStyle:I

    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 293
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textFlags:I

    if-lez v0, :cond_1

    .line 294
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 296
    :cond_1
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineBreakMode:I

    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getEllipsize(I)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 297
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textGravity:I

    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->alignment:Landroid/text/Layout$Alignment;

    .line 299
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->accessibilityText:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->setAccessibilityText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 356
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 357
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;

    if-nez p2, :cond_0

    return-void

    .line 360
    :cond_0
    nop

    nop

    .line 361
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textStyle:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textStyle:I

    .line 362
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textGravity:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textGravity:I

    .line 363
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    .line 364
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineBreakMode:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineBreakMode:I

    .line 365
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxWidth:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxWidth:I

    .line 366
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    .line 367
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textColor:I

    .line 368
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textSize:F

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textSize:F

    .line 369
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textFlags:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textFlags:I

    .line 371
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;

    .line 372
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    .line 373
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    .line 374
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 375
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->translateY:F

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->translateY:F

    .line 376
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->alignment:Landroid/text/Layout$Alignment;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->alignment:Landroid/text/Layout$Alignment;

    .line 378
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineHeight:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineHeight:I

    .line 379
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineSpacing:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineSpacing:I

    .line 380
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingTop:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingTop:I

    .line 381
    iget p1, p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingBottom:I

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingBottom:I

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 467
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeFastText;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFastText;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;

    .line 135
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->initText()V

    .line 139
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 140
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 141
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v2}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->makeNewLayout(ILjava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 144
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 145
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    .line 146
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 147
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v2}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->makeNewLayout(ILjava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    .line 151
    :goto_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    .line 152
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->calculateEllipsizeText()V

    .line 154
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v2}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->makeNewLayout(ILjava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    goto :goto_1

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->showText:Ljava/lang/CharSequence;

    .line 159
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 160
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-ne v0, v1, :cond_2

    goto :goto_2

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->layoutHeight:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    const/4 p2, 0x0

    goto :goto_2

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingBottom:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingTop:I

    add-int/2addr v1, v2

    .line 168
    iget v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 169
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    .line 172
    :cond_4
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 176
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->setMeasuredDimension(II)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->calculateTranslateY(I)F

    move-result p1

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->translateY:F

    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 478
    instance-of p1, p2, Lcom/taobao/android/dinamicx/view/DXNativeFastText;

    if-nez p1, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    nop

    nop

    .line 482
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->staticLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_1

    .line 483
    invoke-virtual {p2, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFastText;->setStaticLayout(Landroid/text/StaticLayout;)V

    .line 487
    :cond_1
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->translateY:F

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->realPaddingTop:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 488
    invoke-virtual {p2, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFastText;->setTranslateY(F)V

    .line 490
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFastText;->setTranslateX(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSetIntAttribute(JI)V
    .locals 4

    const-wide v0, 0x4fa0a53cf9ff05cdL    # 3.764478093842622E75

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 414
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textColor:I

    goto/16 :goto_4

    :cond_0
    const-wide v0, -0x15b761ff122bc14aL    # -9.647743875540848E203

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 416
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textGravity:I

    goto/16 :goto_4

    :cond_1
    const-wide v0, 0x4104ac824834d149L    # 169360.28525699142

    const v2, 0x7fffffff

    cmp-long v3, v0, p1

    if-nez v3, :cond_3

    if-lez p3, :cond_2

    .line 419
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    goto/16 :goto_4

    .line 421
    :cond_2
    iput v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    goto/16 :goto_4

    :cond_3
    const-wide v0, 0x4104acaeac93fd4eL    # 169365.83426664252

    cmp-long v3, v0, p1

    if-nez v3, :cond_5

    if-lez p3, :cond_4

    .line 425
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxWidth:I

    goto/16 :goto_4

    .line 427
    :cond_4
    iput v2, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxWidth:I

    goto/16 :goto_4

    :cond_5
    const-wide v0, 0x16e689cf8629401fL

    cmp-long v2, v0, p1

    if-nez v2, :cond_6

    .line 430
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineBreakMode:I

    goto/16 :goto_4

    :cond_6
    const-wide v0, 0x5db0637a915fa268L    # 1.998478668458365E143

    cmp-long v2, v0, p1

    if-nez v2, :cond_8

    if-lez p3, :cond_7

    int-to-float p1, p3

    .line 433
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textSize:F

    goto/16 :goto_4

    .line 435
    :cond_7
    sget p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->DEFAULT_TEXT_SIZE:I

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textSize:F

    goto/16 :goto_4

    :cond_8
    const-wide v0, 0x217a84c0a4e823L

    cmp-long v2, v0, p1

    if-nez v2, :cond_a

    if-lez p3, :cond_9

    .line 438
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textStyle:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textStyle:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textStyle:I

    goto :goto_4

    :cond_a
    const-wide v0, 0x30f463d79fdbaf3aL    # 7.212710045908018E-73

    cmp-long v2, v0, p1

    if-nez v2, :cond_c

    if-lez p3, :cond_b

    .line 440
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textStyle:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_b
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textStyle:I

    and-int/lit8 p1, p1, -0x3

    :goto_1
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textStyle:I

    goto :goto_4

    :cond_c
    const-wide v0, -0x1828c24a44a9fdc2L    # -1.6568114052829266E192

    cmp-long v2, v0, p1

    if-nez v2, :cond_e

    if-lez p3, :cond_d

    .line 442
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textFlags:I

    or-int/lit8 p1, p1, 0x11

    goto :goto_2

    :cond_d
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textFlags:I

    and-int/lit8 p1, p1, -0x12

    :goto_2
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textFlags:I

    goto :goto_4

    :cond_e
    const-wide v0, -0x70436869a825ae73L    # -7.193992704746297E-233

    cmp-long v2, v0, p1

    if-nez v2, :cond_10

    if-lez p3, :cond_f

    .line 444
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textFlags:I

    or-int/lit8 p1, p1, 0x9

    goto :goto_3

    :cond_f
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textFlags:I

    and-int/lit8 p1, p1, -0xa

    :goto_3
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textFlags:I

    goto :goto_4

    :cond_10
    const-wide v0, 0x547793880a65750bL    # 8.057385527336425E98

    cmp-long v2, v0, p1

    if-nez v2, :cond_11

    .line 446
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineHeight:I

    goto :goto_4

    :cond_11
    const-wide v0, -0x20e105d520229788L    # -1.5843832850867073E150

    cmp-long v2, v0, p1

    if-nez v2, :cond_12

    .line 448
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineSpacing:I

    goto :goto_4

    .line 450
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetIntAttribute(JI)V

    :goto_4
    return-void
.end method

.method protected onSetStringAttribute(JLjava/lang/String;)V
    .locals 3

    const-wide v0, 0x8e396ac59L

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 458
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    goto :goto_0

    .line 460
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetStringAttribute(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method setAccessibility(Landroid/view/View;)V
    .locals 3

    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 307
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->accessibilityText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->accessibilityText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 312
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->accessibility:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    return-void

    .line 317
    :cond_1
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->accessibility:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->accessibility:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 320
    :cond_2
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->accessibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    .line 321
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 323
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 318
    :cond_4
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 319
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1

    :cond_5
    const-string v0, ""

    .line 328
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setLineBreakMode(I)V
    .locals 0

    .line 705
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->lineBreakMode:I

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 698
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 700
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxLine:I

    :goto_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 710
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxWidth:I

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 712
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->maxWidth:I

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->text:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 677
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textColor:I

    return-void
.end method

.method public setTextGravity(I)V
    .locals 0

    .line 693
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textGravity:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 682
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textSize:F

    goto :goto_0

    .line 684
    :cond_0
    sget p1, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->DEFAULT_TEXT_SIZE:I

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textSize:F

    :goto_0
    return-void
.end method

.method public setTextStyle(I)V
    .locals 0

    .line 689
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode;->textStyle:I

    return-void
.end method
