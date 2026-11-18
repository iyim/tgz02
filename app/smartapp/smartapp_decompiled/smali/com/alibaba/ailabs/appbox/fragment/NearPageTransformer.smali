.class public Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;
.super Ljava/lang/Object;
.source "NearPageTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# static fields
.field private static final TAG:Ljava/lang/String; = "NearPageTransformer"


# instance fields
.field private mOffset1:F

.field private mOffset2:F

.field scaleX1:F

.field scaleX2:F

.field scaleY1:F

.field scaleY2:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43a60000    # 332.0f

    .line 9
    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->mOffset1:F

    const/high16 v0, 0x42700000    # 60.0f

    .line 10
    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->mOffset2:F

    const v0, 0x3f6d097b

    .line 11
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->formatFloat(F)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->scaleX1:F

    const v0, 0x3f68ba2f

    .line 12
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->formatFloat(F)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->scaleY1:F

    const v0, 0x3f5a12f7

    .line 14
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->formatFloat(F)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->scaleX2:F

    const v0, 0x3f581a99

    .line 15
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->formatFloat(F)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->scaleY2:F

    return-void
.end method

.method private formatFloat(F)F
    .locals 1

    const v0, 0x49742400    # 1000000.0f

    mul-float p1, p1, v0

    .line 53
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p2, v0

    if-gez v2, :cond_1

    add-float v0, p2, v1

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_1
    neg-float v2, p2

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    cmpg-float v3, p2, v1

    if-gtz v3, :cond_2

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 30
    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->mOffset1:F

    mul-float v0, v0, p2

    add-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, -0x3ed00000    # -11.0f

    mul-float v0, v0, p2

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 32
    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->scaleX1:F

    sub-float v0, v1, v0

    mul-float v0, v0, p2

    sub-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->formatFloat(F)F

    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v4, p2, v3

    if-gtz v4, :cond_3

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 37
    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->mOffset1:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->mOffset2:F

    sub-float v1, p2, v1

    mul-float v0, v0, v1

    add-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x41300000    # 11.0f

    mul-float v1, v1, v0

    add-float/2addr v1, v0

    neg-float v0, v1

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 39
    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->scaleX2:F

    iget v1, p0, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->scaleX1:F

    sub-float/2addr v1, v0

    sub-float/2addr v3, p2

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/fragment/NearPageTransformer;->formatFloat(F)F

    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_3
    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v2, p2, v1

    if-gtz v2, :cond_4

    sub-float/2addr v1, p2

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const/high16 v0, 0x41200000    # 10.0f

    sub-float/2addr v0, p2

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method
