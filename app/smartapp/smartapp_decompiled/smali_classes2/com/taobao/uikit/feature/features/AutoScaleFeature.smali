.class public Lcom/taobao/uikit/feature/features/AutoScaleFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "AutoScaleFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/LayoutCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/widget/TextView;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/LayoutCallback;"
    }
.end annotation


# instance fields
.field private minTextSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 19
    iput v0, p0, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->minTextSize:F

    return-void
.end method


# virtual methods
.method public afterOnLayout(ZIIII)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->getHost()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->getHost()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 52
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->getHost()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    if-lez p1, :cond_1

    .line 54
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 56
    new-instance p3, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->getHost()Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 57
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->getHost()Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getTextSize()F

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->getHost()Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getTextSize()F

    move-result p4

    .line 59
    :goto_0
    iget p5, p0, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->minTextSize:F

    cmpl-float p5, p4, p5

    if-lez p5, :cond_0

    .line 61
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p5

    int-to-float v0, p1

    cmpl-float p5, p5, v0

    if-lez p5, :cond_0

    const/high16 p5, 0x3f800000    # 1.0f

    sub-float/2addr p4, p5

    .line 69
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public beforeOnLayout(ZIIII)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 26
    sget-object p3, Lcom/taobao/uikit/R$styleable;->AutoScaleFeature:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    sget p2, Lcom/taobao/uikit/R$styleable;->AutoScaleFeature_uik_minTextSize:I

    const/high16 p3, 0x41200000    # 10.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->minTextSize:F

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->minTextSize:F

    .line 38
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/AutoScaleFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method
