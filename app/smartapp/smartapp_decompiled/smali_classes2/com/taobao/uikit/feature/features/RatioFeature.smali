.class public Lcom/taobao/uikit/feature/features/RatioFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "RatioFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/MeasureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/view/View;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/MeasureCallback;"
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static sDefaultRatio:F = 0.5f


# instance fields
.field private mOrientation:I

.field private mRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    .line 38
    sget v0, Lcom/taobao/uikit/feature/features/RatioFeature;->sDefaultRatio:F

    iput v0, p0, Lcom/taobao/uikit/feature/features/RatioFeature;->mRatio:F

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/taobao/uikit/feature/features/RatioFeature;->mOrientation:I

    return-void
.end method


# virtual methods
.method public afterOnMeasure(II)V
    .locals 5

    .line 54
    iget v0, p0, Lcom/taobao/uikit/feature/features/RatioFeature;->mRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 63
    iget v0, p0, Lcom/taobao/uikit/feature/features/RatioFeature;->mOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 74
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float p1, v2

    .line 75
    iget p2, p0, Lcom/taobao/uikit/feature/features/RatioFeature;->mRatio:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 88
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float p1, v2

    .line 89
    iget p2, p0, Lcom/taobao/uikit/feature/features/RatioFeature;->mRatio:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    move v4, v2

    move v2, p1

    move p1, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/RatioFeature;->getHost()Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/taobao/uikit/feature/view/ViewHelper;

    if-eqz p2, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/RatioFeature;->getHost()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/uikit/feature/view/ViewHelper;

    int-to-long v0, v2

    int-to-long v2, p1

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/taobao/uikit/feature/view/ViewHelper;->setMeasuredDimension(JJ)V

    :cond_2
    return-void
.end method

.method public beforeOnMeasure(II)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 148
    sget-object p3, Lcom/taobao/uikit/R$styleable;->RatioFeature:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    sget p2, Lcom/taobao/uikit/R$styleable;->RatioFeature_uik_ratio:I

    sget p3, Lcom/taobao/uikit/feature/features/RatioFeature;->sDefaultRatio:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/RatioFeature;->mRatio:F

    .line 152
    sget p2, Lcom/taobao/uikit/R$styleable;->RatioFeature_uik_orientation:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/RatioFeature;->mOrientation:I

    .line 153
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public setHost(Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/taobao/uikit/feature/features/RatioFeature;->mOrientation:I

    return-void
.end method

.method public setRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 105
    iget v0, p0, Lcom/taobao/uikit/feature/features/RatioFeature;->mRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 106
    iput p1, p0, Lcom/taobao/uikit/feature/features/RatioFeature;->mRatio:F

    .line 107
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/RatioFeature;->getHost()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/RatioFeature;->getHost()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
