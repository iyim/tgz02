.class public Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "EditTextEllipsize.java"


# instance fields
.field private isFocus:Z

.field private isUpdate:Z

.field private mChineseSize:F

.field private mDotsString:Ljava/lang/String;

.field private mEngSize:F

.field private mStoreString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->isFocus:Z

    .line 18
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->isUpdate:Z

    const/high16 p1, 0x3fa00000    # 1.25f

    .line 19
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mChineseSize:F

    const p1, 0x3f19999a    # 0.6f

    .line 20
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mEngSize:F

    .line 24
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->isFocus:Z

    .line 18
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->isUpdate:Z

    const/high16 p1, 0x3fa00000    # 1.25f

    .line 19
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mChineseSize:F

    const p1, 0x3f19999a    # 0.6f

    .line 20
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mEngSize:F

    .line 29
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->isFocus:Z

    .line 18
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->isUpdate:Z

    const/high16 p1, 0x3fa00000    # 1.25f

    .line 19
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mChineseSize:F

    const p1, 0x3f19999a    # 0.6f

    .line 20
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mEngSize:F

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->init()V

    return-void
.end method

.method private getCurLength(Ljava/lang/CharSequence;)F
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 93
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 94
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    .line 95
    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mEngSize:F

    goto :goto_1

    .line 97
    :cond_1
    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mChineseSize:F

    :goto_1
    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private init()V
    .locals 2

    .line 43
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$EditTextEllipsize$QU2KJVV8K-hyIAMTx-1jkXFiGGk;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$EditTextEllipsize$QU2KJVV8K-hyIAMTx-1jkXFiGGk;-><init>(Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/high16 v0, 0x10000000

    .line 47
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setImeOptions(I)V

    .line 48
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$EditTextEllipsize$Fg8LFLkMo5vMwAjNpp-KtxJbibE;->INSTANCE:Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$EditTextEllipsize$Fg8LFLkMo5vMwAjNpp-KtxJbibE;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$EditTextEllipsize$1UF1QL3-VUcCjDz4UOjj8QFY5_E;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$EditTextEllipsize$1UF1QL3-VUcCjDz4UOjj8QFY5_E;-><init>(Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/16 v0, 0xb0

    .line 57
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setInputType(I)V

    return-void
.end method

.method static synthetic lambda$init$45(Landroid/view/View;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getEditText()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mStoreString:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$init$44$EditTextEllipsize(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->requestFocus()Z

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$init$46$EditTextEllipsize()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mStoreString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->isUpdate:Z

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mStoreString:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mStoreString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setEllipsizeText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 63
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->isFocus:Z

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->isFocus:Z

    .line 68
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mStoreString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setSelection(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->isFocus:Z

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setEllipsizeText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 108
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mStoreString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setEllipsizeText(Ljava/lang/String;)V
    .locals 3

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getTextSize()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int v0, v0, v1

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getCurLength(Ljava/lang/CharSequence;)F

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getTextSize()F

    move-result v2

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mDotsString:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mDotsString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSize(FF)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mChineseSize:F

    .line 39
    iput p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->mEngSize:F

    return-void
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->isUpdate:Z

    return-void
.end method
