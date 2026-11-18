.class public Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;
.super Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.source "DXTextInputWidgetNode.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$InputTextWatcher;,
        Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$Builder;,
        Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$DXTextGravity;
    }
.end annotation


# static fields
.field public static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field public static DEFAULT_TEXT_SIZE:I = 0x0

.field static final INPUT_TYPE_DIGIT:I = 0x1

.field static final INPUT_TYPE_NORMAL:I = 0x0

.field static final INPUT_TYPE_PHONE:I = 0x2


# instance fields
.field keyboard:I

.field maxLength:I

.field placeHolder:Ljava/lang/String;

.field placeHolderColor:I

.field text:Ljava/lang/CharSequence;

.field textColor:I

.field textGravity:I

.field textSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 3

    .line 90
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;-><init>()V

    const/high16 v0, -0x1000000

    .line 35
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textColor:I

    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textGravity:I

    const v2, -0x777778

    .line 47
    iput v2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->placeHolderColor:I

    const-string v2, ""

    .line 91
    iput-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->text:Ljava/lang/CharSequence;

    .line 92
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textColor:I

    .line 93
    sget v0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->DEFAULT_TEXT_SIZE:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v0, v2}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->DEFAULT_TEXT_SIZE:I

    .line 97
    :cond_0
    sget v0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->DEFAULT_TEXT_SIZE:I

    int-to-float v0, v0

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textSize:F

    .line 98
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textGravity:I

    const/4 v0, 0x1

    .line 99
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->accessibility:I

    return-void
.end method

.method private setKeyBoardType(Landroid/widget/EditText;I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v0, :cond_1

    if-eq p2, v1, :cond_0

    .line 265
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 262
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void
.end method

.method private setNativeTextGravity(Landroid/widget/EditText;I)V
    .locals 1

    if-nez p2, :cond_0

    const/16 p2, 0x13

    .line 278
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/16 p2, 0x11

    .line 280
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    const/16 p2, 0x15

    .line 282
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x10

    .line 284
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;-><init>()V

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

    .line 148
    sget p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->DEFAULT_TEXT_SIZE:I

    return p1

    .line 150
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result p1

    return p1
.end method

.method public getKeyboard()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->keyboard:I

    return v0
.end method

.method public getMaxLength()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->maxLength:I

    return v0
.end method

.method public getPlaceholder()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->placeHolder:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceholderColor()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->placeHolderColor:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textColor:I

    return v0
.end method

.method public getTextGravity()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textGravity:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 297
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textSize:F

    return v0
.end method

.method protected onBindEvent(Landroid/content/Context;Landroid/view/View;J)V
    .locals 3

    const-wide v0, 0x49652a47524c602bL    # 3.775989076956713E45

    cmp-long v2, p3, v0

    if-nez v2, :cond_1

    .line 240
    sget p1, Lcom/taobao/android/dinamic/DinamicTagKey;->TEXT_WATCHER:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$InputTextWatcher;

    if-eqz p1, :cond_0

    .line 242
    move-object p3, p2

    check-cast p3, Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    :cond_0
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$InputTextWatcher;

    invoke-direct {p1, p0, p2}, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$InputTextWatcher;-><init>(Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;Landroid/view/View;)V

    .line 246
    sget p3, Lcom/taobao/android/dinamic/DinamicTagKey;->TEXT_WATCHER:I

    invoke-virtual {p2, p3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 247
    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onBindEvent(Landroid/content/Context;Landroid/view/View;J)V

    :goto_0
    return-void
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 128
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 129
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;

    if-nez p2, :cond_0

    return-void

    .line 132
    :cond_0
    nop

    nop

    .line 133
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->text:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->text:Ljava/lang/CharSequence;

    .line 134
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textColor:I

    .line 135
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textSize:F

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textSize:F

    .line 136
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textGravity:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textGravity:I

    .line 137
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->keyboard:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->keyboard:I

    .line 138
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->placeHolder:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->placeHolder:Ljava/lang/String;

    .line 139
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->maxLength:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->maxLength:I

    .line 140
    iget p1, p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->placeHolderColor:I

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->placeHolderColor:I

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 82
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLines(I)V

    .line 84
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    const/4 p1, 0x6

    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 p1, 0x0

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 104
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v0

    .line 105
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 117
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 120
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v4

    .line 123
    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    if-eqz p2, :cond_2

    .line 194
    instance-of p1, p2, Landroid/widget/EditText;

    if-nez p1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    nop

    nop

    .line 199
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->placeHolder:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 201
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->placeHolderColor:I

    const/4 v0, 0x0

    const-string v1, "placeholderColor"

    invoke-virtual {p0, v1, v0, p1}, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result p1

    .line 202
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 204
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->text:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textSize:F

    invoke-virtual {p2, v0, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 207
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textColor:I

    const-string/jumbo v1, "textColor"

    invoke-virtual {p0, v1, v0, p1}, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result p1

    .line 208
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 210
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textGravity:I

    invoke-direct {p0, p2, p1}, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->setNativeTextGravity(Landroid/widget/EditText;I)V

    .line 211
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->keyboard:I

    invoke-direct {p0, p2, p1}, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->setKeyBoardType(Landroid/widget/EditText;I)V

    .line 213
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 216
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$1;

    invoke-direct {p1, p0, p2}, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$1;-><init>(Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;Landroid/widget/EditText;)V

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->maxLength:I

    const/4 v1, 0x1

    if-gtz p1, :cond_1

    .line 229
    new-array p1, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 231
    :cond_1
    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSetIntAttribute(JI)V
    .locals 3

    const-wide v0, 0x4fa0a53cf9ff05cdL    # 3.764478093842622E75

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 156
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textColor:I

    goto :goto_0

    :cond_0
    const-wide v0, -0x15b761ff122bc14aL    # -9.647743875540848E203

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 158
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textGravity:I

    goto :goto_0

    :cond_1
    const-wide v0, -0x2478e9ecee1dce4fL    # -8.193342216471756E132

    cmp-long v2, v0, p1

    if-nez v2, :cond_2

    .line 160
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->maxLength:I

    goto :goto_0

    :cond_2
    const-wide v0, 0x10b9fcd413f0b192L

    cmp-long v2, v0, p1

    if-nez v2, :cond_3

    .line 162
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->placeHolderColor:I

    goto :goto_0

    :cond_3
    const-wide v0, 0x5db0637a915fa268L    # 1.998478668458365E143

    cmp-long v2, v0, p1

    if-nez v2, :cond_4

    int-to-float p1, p3

    .line 164
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->textSize:F

    goto :goto_0

    :cond_4
    const-wide v0, 0x38e890ed60464d59L    # 1.4785196910882566E-34

    cmp-long v2, v0, p1

    if-nez v2, :cond_5

    .line 166
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->keyboard:I

    goto :goto_0

    .line 168
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetIntAttribute(JI)V

    :goto_0
    return-void
.end method

.method protected onSetStringAttribute(JLjava/lang/String;)V
    .locals 3

    const-wide v0, 0x8e396ac59L

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 176
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->text:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-wide v0, 0x52ff33d38a18698eL    # 6.356050624455719E91

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 178
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->placeHolder:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetStringAttribute(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBackground(Landroid/view/View;)V
    .locals 1

    .line 186
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setBackground(Landroid/view/View;)V

    .line 187
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->needSetBackground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
