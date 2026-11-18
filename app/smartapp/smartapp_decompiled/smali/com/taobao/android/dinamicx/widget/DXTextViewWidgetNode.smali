.class public Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;
.super Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.source "DXTextViewWidgetNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode$Builder;,
        Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode$DXTextLineBreakMode;,
        Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode$DXTextGravity;,
        Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode$DXTextStyle;
    }
.end annotation


# static fields
.field private static DEFAULT_FLAGS:I = 0x0

.field public static DEFAULT_MAX_LINE:I = 0x1

.field public static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field public static DEFAULT_TEXT_SIZE:I

.field private static attributeThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static measuredTextViewHashMapThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

.field lineBreakMode:I

.field maxLine:I

.field maxWidth:I

.field text:Ljava/lang/CharSequence;

.field textColor:I

.field textFlags:I

.field textGravity:I

.field textSize:F

.field textStyle:I

.field private textViewUtilForMeasure:Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->attributeThreadLocal:Ljava/lang/ThreadLocal;

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->measuredTextViewHashMapThreadLocal:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    .line 45
    sput v0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->DEFAULT_FLAGS:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 3

    .line 90
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;-><init>()V

    const-string v0, ""

    .line 91
    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->text:Ljava/lang/CharSequence;

    const/high16 v0, -0x1000000

    .line 92
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textColor:I

    .line 93
    sget v0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->DEFAULT_TEXT_SIZE:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->DEFAULT_TEXT_SIZE:I

    .line 97
    :cond_0
    sget-object v0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->measuredTextViewHashMapThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    sget-object v1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->measuredTextViewHashMapThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 103
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;

    iput-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textViewUtilForMeasure:Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;

    .line 104
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textViewUtilForMeasure:Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;

    if-nez v1, :cond_2

    .line 105
    new-instance v1, Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textViewUtilForMeasure:Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;

    .line 106
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textViewUtilForMeasure:Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;->getPaintFlags()I

    move-result v1

    sput v1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->DEFAULT_FLAGS:I

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textViewUtilForMeasure:Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_2
    sget-object v0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->attributeThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    .line 111
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    if-nez v0, :cond_3

    .line 112
    new-instance v0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    .line 113
    sget-object v0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->attributeThreadLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 116
    :cond_3
    sget v0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->DEFAULT_TEXT_SIZE:I

    int-to-float v0, v0

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textSize:F

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    const/4 v1, -0x1

    .line 118
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->lineBreakMode:I

    .line 119
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textGravity:I

    const/4 v0, 0x1

    .line 120
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxLine:I

    .line 121
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxWidth:I

    return-void
.end method

.method public static clearStaticField()V
    .locals 1

    .line 559
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->measuredTextViewHashMapThreadLocal:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    .line 560
    sput v0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->DEFAULT_TEXT_SIZE:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;-><init>()V

    return-object p1
.end method

.method public getDefaultValueForIntAttr(J)I
    .locals 3

    const-wide v0, 0x4fa0a53cf9ff05cdL    # 3.764478093842622E75

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/high16 p1, -0x1000000

    return p1

    :cond_0
    const-wide v0, 0x5db0637a915fa268L    # 1.998478668458365E143

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 286
    sget p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->DEFAULT_TEXT_SIZE:I

    return p1

    :cond_1
    const-wide v0, 0x4104ac824834d149L    # 169360.28525699142

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 288
    sget p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->DEFAULT_MAX_LINE:I

    return p1

    .line 290
    :cond_2
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

    .line 299
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForStringAttr(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLineBreakMode()I
    .locals 1

    .line 504
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->lineBreakMode:I

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    .line 500
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxLine:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxWidth:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 484
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textColor:I

    return v0
.end method

.method public getTextGravity()I
    .locals 1

    .line 496
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textGravity:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 488
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textSize:F

    return v0
.end method

.method public getTextStyle()I
    .locals 1

    .line 492
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    return v0
.end method

.method protected onBeforeMeasure(Landroid/widget/TextView;)V
    .locals 3

    .line 168
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->resetMeasuredView(Landroid/widget/TextView;)V

    .line 169
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->layoutWidth:I

    iput v1, v0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->widthAttr:I

    .line 170
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->layoutHeight:I

    iput v1, v0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->heightAttr:I

    .line 171
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    iget-wide v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->weight:D

    iput-wide v1, v0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->weightAttr:D

    .line 172
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->layoutGravity:I

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    iget v1, v1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->oldGravity:I

    if-eq v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->layoutGravity:I

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->getDirection()I

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->getAbsoluteGravity(II)I

    move-result v1

    invoke-static {v1}, Lcom/taobao/android/dinamicx/widget/utils/DXUtils;->transformToNativeGravity(I)I

    move-result v1

    iput v1, v0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->layoutGravityAttr:I

    .line 174
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->layoutGravity:I

    iput v1, v0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->oldGravity:I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->parentWidget:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXLayout;

    .line 177
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXLayout;->generateLayoutParams(Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->beforeMeasureAttribute:Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;

    invoke-virtual {v0, v2, v1}, Lcom/taobao/android/dinamicx/widget/DXLayout;->generateLayoutParams(Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 183
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 264
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 265
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;

    if-nez p2, :cond_0

    return-void

    .line 268
    :cond_0
    nop

    nop

    .line 270
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    .line 271
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textGravity:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textGravity:I

    .line 272
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxLine:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxLine:I

    .line 273
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->lineBreakMode:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->lineBreakMode:I

    .line 274
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxWidth:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxWidth:I

    .line 275
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->text:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->text:Ljava/lang/CharSequence;

    .line 276
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textColor:I

    .line 277
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textSize:F

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textSize:F

    .line 278
    iget p1, p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textFlags:I

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textFlags:I

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 361
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeTextView;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeTextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 143
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setMeasuredDimension(II)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textViewUtilForMeasure:Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;

    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->onBeforeMeasure(Landroid/widget/TextView;)V

    .line 147
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textViewUtilForMeasure:Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;->onMeasure(II)V

    .line 148
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->layoutHeight:I

    const/4 p2, -0x2

    if-ne p1, p2, :cond_1

    .line 149
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textViewUtilForMeasure:Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;->getMeasuredWidthAndState()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setMeasuredDimension(II)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textViewUtilForMeasure:Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;->getMeasuredWidthAndState()I

    move-result p1

    iget-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textViewUtilForMeasure:Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/view/DXMeasuredTextView;->getMeasuredHeightAndState()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_4

    .line 372
    instance-of p1, p2, Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    nop

    nop

    .line 376
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 379
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textColor:I

    const/4 v0, 0x0

    const-string/jumbo v1, "textColor"

    invoke-virtual {p0, v1, v0, p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result p1

    .line 380
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textSize:F

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 383
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 384
    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeTextStyle(Landroid/widget/TextView;I)V

    .line 386
    :cond_1
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxLine:I

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeMaxLines(Landroid/widget/TextView;I)V

    .line 387
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textGravity:I

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeTextGravity(Landroid/widget/TextView;I)V

    .line 388
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->lineBreakMode:I

    if-eq p1, v0, :cond_2

    .line 389
    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeEllipsize(Landroid/widget/TextView;I)V

    .line 391
    :cond_2
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxWidth:I

    if-eq p1, v0, :cond_3

    .line 392
    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeMaxWidth(Landroid/widget/TextView;I)V

    .line 394
    :cond_3
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textFlags:I

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeTextFlags(Landroid/widget/TextView;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onSetDoubleAttribute(JD)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSetIntAttribute(JI)V
    .locals 4

    const-wide v0, 0x4fa0a53cf9ff05cdL    # 3.764478093842622E75

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 306
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textColor:I

    goto/16 :goto_4

    :cond_0
    const-wide v0, -0x15b761ff122bc14aL    # -9.647743875540848E203

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 308
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textGravity:I

    goto/16 :goto_4

    :cond_1
    const-wide v0, 0x4104ac824834d149L    # 169360.28525699142

    const v2, 0x7fffffff

    cmp-long v3, v0, p1

    if-nez v3, :cond_3

    if-lez p3, :cond_2

    .line 311
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxLine:I

    goto/16 :goto_4

    .line 313
    :cond_2
    iput v2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxLine:I

    goto/16 :goto_4

    :cond_3
    const-wide v0, 0x4104acaeac93fd4eL    # 169365.83426664252

    cmp-long v3, v0, p1

    if-nez v3, :cond_5

    if-lez p3, :cond_4

    .line 317
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxWidth:I

    goto/16 :goto_4

    .line 319
    :cond_4
    iput v2, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxWidth:I

    goto/16 :goto_4

    :cond_5
    const-wide v0, 0x16e689cf8629401fL

    cmp-long v2, v0, p1

    if-nez v2, :cond_6

    .line 323
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->lineBreakMode:I

    goto/16 :goto_4

    :cond_6
    const-wide v0, 0x5db0637a915fa268L    # 1.998478668458365E143

    cmp-long v2, v0, p1

    if-nez v2, :cond_8

    if-lez p3, :cond_7

    int-to-float p1, p3

    .line 326
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textSize:F

    goto/16 :goto_4

    .line 328
    :cond_7
    sget p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->DEFAULT_TEXT_SIZE:I

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textSize:F

    goto :goto_4

    :cond_8
    const-wide v0, 0x217a84c0a4e823L

    cmp-long v2, v0, p1

    if-nez v2, :cond_a

    if-lez p3, :cond_9

    .line 331
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    goto :goto_4

    :cond_a
    const-wide v0, 0x30f463d79fdbaf3aL    # 7.212710045908018E-73

    cmp-long v2, v0, p1

    if-nez v2, :cond_c

    if-lez p3, :cond_b

    .line 333
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_b
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    and-int/lit8 p1, p1, -0x3

    :goto_1
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    goto :goto_4

    :cond_c
    const-wide v0, -0x1828c24a44a9fdc2L    # -1.6568114052829266E192

    cmp-long v2, v0, p1

    if-nez v2, :cond_e

    if-lez p3, :cond_d

    .line 335
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textFlags:I

    or-int/lit8 p1, p1, 0x11

    goto :goto_2

    :cond_d
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textFlags:I

    and-int/lit8 p1, p1, -0x12

    :goto_2
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textFlags:I

    goto :goto_4

    :cond_e
    const-wide v0, -0x70436869a825ae73L    # -7.193992704746297E-233

    cmp-long v2, v0, p1

    if-nez v2, :cond_10

    if-lez p3, :cond_f

    .line 337
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textFlags:I

    or-int/lit8 p1, p1, 0x9

    goto :goto_3

    :cond_f
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textFlags:I

    and-int/lit8 p1, p1, -0xa

    :goto_3
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textFlags:I

    goto :goto_4

    .line 339
    :cond_10
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetIntAttribute(JI)V

    :goto_4
    return-void
.end method

.method protected onSetStringAttribute(JLjava/lang/String;)V
    .locals 3

    const-wide v0, 0x8e396ac59L

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 352
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->text:Ljava/lang/CharSequence;

    goto :goto_0

    .line 354
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetStringAttribute(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected resetMeasuredView(Landroid/widget/TextView;)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textSize:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 195
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeTextStyle(Landroid/widget/TextView;I)V

    .line 197
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxLine:I

    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeMaxLines(Landroid/widget/TextView;I)V

    .line 198
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->lineBreakMode:I

    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeEllipsize(Landroid/widget/TextView;I)V

    .line 199
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxWidth:I

    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeMaxWidth(Landroid/widget/TextView;I)V

    .line 200
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textFlags:I

    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setNativeTextFlags(Landroid/widget/TextView;I)V

    return-void
.end method

.method setAccessibility(Landroid/view/View;)V
    .locals 3

    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 431
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->accessibilityText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->accessibilityText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 436
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->accessibility:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    return-void

    .line 441
    :cond_1
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->accessibility:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->accessibility:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 444
    :cond_2
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->accessibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    .line 445
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 447
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 442
    :cond_4
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 443
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1

    :cond_5
    const-string v0, ""

    .line 452
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setLineBreakMode(I)V
    .locals 0

    .line 544
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->lineBreakMode:I

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 537
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxLine:I

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 539
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxLine:I

    :goto_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 549
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxWidth:I

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 551
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->maxWidth:I

    :goto_0
    return-void
.end method

.method protected setNativeEllipsize(Landroid/widget/TextView;I)V
    .locals 1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 471
    :cond_1
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 468
    :cond_2
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 465
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void
.end method

.method protected setNativeMaxLines(Landroid/widget/TextView;I)V
    .locals 0

    if-lez p2, :cond_0

    .line 247
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7fffffff

    .line 249
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method

.method protected setNativeMaxWidth(Landroid/widget/TextView;I)V
    .locals 0

    if-lez p2, :cond_0

    .line 255
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7fffffff

    .line 257
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_0
    return-void
.end method

.method protected setNativeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    .line 238
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    .line 239
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected setNativeTextFlags(Landroid/widget/TextView;I)V
    .locals 1

    .line 231
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    .line 232
    sget p2, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->DEFAULT_FLAGS:I

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_1
    return-void
.end method

.method protected setNativeTextGravity(Landroid/widget/TextView;I)V
    .locals 7

    .line 404
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->getDirection()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x11

    const/4 v3, 0x2

    const/16 v4, 0x15

    const/16 v5, 0x13

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    if-nez p2, :cond_0

    .line 406
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    if-ne p2, v6, :cond_1

    .line 408
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v3, :cond_2

    .line 410
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    .line 416
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_4
    if-ne p2, v6, :cond_5

    .line 418
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_5
    if-ne p2, v3, :cond_6

    .line 420
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 422
    :cond_6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method

.method protected setNativeTextStyle(Landroid/widget/TextView;I)V
    .locals 1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 211
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->text:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 516
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textColor:I

    return-void
.end method

.method public setTextGravity(I)V
    .locals 0

    .line 532
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textGravity:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 521
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textSize:F

    goto :goto_0

    .line 523
    :cond_0
    sget p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->DEFAULT_TEXT_SIZE:I

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textSize:F

    :goto_0
    return-void
.end method

.method public setTextStyle(I)V
    .locals 0

    .line 528
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->textStyle:I

    return-void
.end method
