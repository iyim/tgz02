.class public Lcom/taobao/android/dinamicx/AliDXImageViewImpl;
.super Ljava/lang/Object;
.source "AliDXImageViewImpl.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public buildView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1

    .line 20
    invoke-static {}, Lcom/taobao/android/AliImageServiceFetcher;->getImageService()Lcom/taobao/android/AliImageServiceInterface;

    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Lcom/taobao/android/AliImageServiceInterface;->newUrlImageView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method public setImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;)V
    .locals 6

    .line 26
    check-cast p1, Lcom/taobao/android/AliUrlImageViewInterface;

    .line 28
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedSetImageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {p1, p2}, Lcom/taobao/android/AliUrlImageViewInterface;->setImageUrl(Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isAnimated()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isForceOriginal()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-interface {p1, p2}, Lcom/taobao/android/AliUrlImageViewInterface;->setSkipAutoSize(Z)V

    .line 33
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isAutoRelease()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/taobao/android/AliUrlImageViewInterface;->setAutoRelease(Z)V

    .line 34
    iget-object p2, p3, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->placeHolder:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, p2}, Lcom/taobao/android/AliUrlImageViewInterface;->setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget p2, p3, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->placeHolderResId:I

    invoke-interface {p1, p2}, Lcom/taobao/android/AliUrlImageViewInterface;->setPlaceHoldImageResId(I)V

    .line 36
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedDarkModeOverlay()Z

    move-result p2

    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->getDarkModeOverlayOpacity()D

    move-result-wide v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-interface {p1, p2, v2}, Lcom/taobao/android/AliUrlImageViewInterface;->setDarkModeOverlay(ZI)V

    .line 41
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedClipRadius()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 42
    iget-object p2, p3, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->cornerRadii:[I

    .line 43
    aget v0, p2, v0

    int-to-float v0, v0

    aget v2, p2, v1

    int-to-float v2, v2

    const/4 v3, 0x3

    aget v3, p2, v3

    int-to-float v3, v3

    const/4 v4, 0x2

    aget p2, p2, v4

    int-to-float p2, p2

    invoke-interface {p1, v0, v2, v3, p2}, Lcom/taobao/android/AliUrlImageViewInterface;->setCornerRadius(FFFF)V

    .line 44
    invoke-interface {p1, v1}, Lcom/taobao/android/AliUrlImageViewInterface;->setShape(I)V

    .line 47
    :cond_3
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedBorderWidth()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 48
    iget p2, p3, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->borderWidth:I

    int-to-float p2, p2

    invoke-interface {p1, p2}, Lcom/taobao/android/AliUrlImageViewInterface;->setStrokeWidth(F)V

    .line 51
    :cond_4
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedBorderColor()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 52
    iget p2, p3, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->borderColor:I

    invoke-interface {p1, p2}, Lcom/taobao/android/AliUrlImageViewInterface;->setStrokeColor(I)V

    .line 58
    :cond_5
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedLimitSize()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 59
    iget-object p2, p3, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->sizeType:Ljava/lang/String;

    const-string v0, "heightLimit"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 60
    iget-object p2, p3, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->module:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/taobao/android/AliUrlImageViewInterface;->newImageStrategyConfigBuilder(Ljava/lang/String;)Lcom/taobao/android/AliImageStrategyConfigBuilderInterface;

    move-result-object p2

    .line 61
    sget-object v0, Lcom/taobao/android/AliImageStrategyConfigBuilderInterface$AliSizeLimitType;->HEIGHT_LIMIT:Lcom/taobao/android/AliImageStrategyConfigBuilderInterface$AliSizeLimitType;

    invoke-interface {p2, v0}, Lcom/taobao/android/AliImageStrategyConfigBuilderInterface;->setSizeLimitType(Lcom/taobao/android/AliImageStrategyConfigBuilderInterface$AliSizeLimitType;)Lcom/taobao/android/AliImageStrategyConfigBuilderInterface;

    .line 62
    invoke-interface {p2}, Lcom/taobao/android/AliImageStrategyConfigBuilderInterface;->build()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/android/AliUrlImageViewInterface;->setStrategyConfig(Ljava/lang/Object;)V

    .line 69
    :cond_6
    iget-object p2, p3, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->listener:Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageLoadListener;

    if-eqz p2, :cond_7

    .line 70
    new-instance p2, Lcom/taobao/android/dinamicx/AliDXImageViewImpl$1;

    invoke-direct {p2, p0, p3}, Lcom/taobao/android/dinamicx/AliDXImageViewImpl$1;-><init>(Lcom/taobao/android/dinamicx/AliDXImageViewImpl;Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;)V

    invoke-interface {p1, p2}, Lcom/taobao/android/AliUrlImageViewInterface;->succListener(Lcom/taobao/android/AliImageListener;)V

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    .line 80
    invoke-interface {p1, p2}, Lcom/taobao/android/AliUrlImageViewInterface;->succListener(Lcom/taobao/android/AliImageListener;)V

    :goto_2
    return-void
.end method
