.class public Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;
.super Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.source "DXImageWidgetNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageLoadListener;,
        Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageResult;,
        Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;,
        Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$LoadDrawableTask;,
        Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$Builder;
    }
.end annotation


# static fields
.field public static final HEIGHT_LIMIT:Ljava/lang/String; = "heightLimit"

.field private static final IMAGE_VIEW_SCALE_TYPE_CENTER_CROP:I = 0x2

.field private static final IMAGE_VIEW_SCALE_TYPE_FIT_CENTER:I = 0x0

.field private static final IMAGE_VIEW_SCALE_TYPE_FIT_XY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DXImageWidgetNode"

.field public static final WIDTH_LIMIT:Ljava/lang/String; = "widthLimit"

.field static imageRatioCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field static resCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animated:Z

.field private aspectRatio:D

.field private asyncImageLoad:Z

.field private autoRelease:Z

.field private darkImageUrl:Ljava/lang/String;

.field private darkModeOverlayOpacity:D

.field private forceOriginal:Z

.field private imageName:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private localImageDrawable:Landroid/graphics/drawable/Drawable;

.field private needDarkModeOverlay:Z

.field private placeHolder:Landroid/graphics/drawable/Drawable;

.field private placeHolderName:Ljava/lang/String;

.field private scaleType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageRatioCache:Landroid/util/LruCache;

    .line 71
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->resCache:Landroid/util/LruCache;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 33
    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->aspectRatio:D

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->asyncImageLoad:Z

    .line 45
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->autoRelease:Z

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->forceOriginal:Z

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 57
    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->darkModeOverlayOpacity:D

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadius:I

    .line 75
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadiusLeftBottom:I

    .line 76
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadiusRightBottom:I

    .line 77
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadiusRightTop:I

    .line 78
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadiusLeftTop:I

    return-void
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 474
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 478
    :cond_0
    sget-object v1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->resCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 482
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 482
    invoke-virtual {v1, p1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 484
    sget-object p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->resCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v0

    .line 490
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;-><init>()V

    return-object p1
.end method

.method protected extraHandleDark()Z
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->darkImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->needDarkModeOverlay:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getAspectRatio()D
    .locals 2

    .line 645
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->aspectRatio:D

    return-wide v0
.end method

.method public getDefaultValueForIntAttr(J)I
    .locals 4

    const/4 v0, 0x1

    const-wide v1, -0x297d48240a33d17bL    # -5.495061243768855E108

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const-wide v1, -0x3ccaf041434e871L

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    return v0

    .line 137
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result p1

    return p1
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->localImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPlaceHolder()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->placeHolder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPlaceHolderName()Ljava/lang/String;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->placeHolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getScaleType()I
    .locals 1

    .line 629
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->scaleType:I

    return v0
.end method

.method public isAnimated()Z
    .locals 1

    .line 657
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->animated:Z

    return v0
.end method

.method public isAsyncImageLoad()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->asyncImageLoad:Z

    return v0
.end method

.method public isAutoRelease()Z
    .locals 1

    .line 673
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->autoRelease:Z

    return v0
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 2

    .line 250
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 252
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;

    if-nez p2, :cond_0

    return-void

    .line 256
    :cond_0
    nop

    nop

    .line 257
    iget-wide v0, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->aspectRatio:D

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->aspectRatio:D

    .line 258
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageName:Ljava/lang/String;

    .line 259
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageUrl:Ljava/lang/String;

    .line 260
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->scaleType:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->scaleType:I

    .line 261
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->localImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->localImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 262
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->animated:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->animated:Z

    .line 263
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->autoRelease:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->autoRelease:Z

    .line 264
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->asyncImageLoad:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->asyncImageLoad:Z

    .line 265
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->placeHolderName:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->placeHolderName:Ljava/lang/String;

    .line 266
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->placeHolder:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->placeHolder:Landroid/graphics/drawable/Drawable;

    .line 267
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->forceOriginal:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->forceOriginal:Z

    .line 268
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->darkImageUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->darkImageUrl:Ljava/lang/String;

    .line 269
    iget-wide v0, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->darkModeOverlayOpacity:D

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->darkModeOverlayOpacity:D

    .line 270
    iget-boolean p1, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->needDarkModeOverlay:Z

    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->needDarkModeOverlay:Z

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 223
    invoke-static {}, Lcom/taobao/android/dinamicx/DXGlobalCenter;->getDxWebImageInterface()Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 228
    :cond_0
    invoke-interface {v0, p1}, Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;->buildView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 165
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v0

    .line 166
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    .line 214
    :cond_2
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v0

    .line 215
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v1

    goto/16 :goto_5

    .line 181
    :cond_3
    :goto_2
    iget-wide v5, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->aspectRatio:D

    const-wide/16 v7, 0x0

    cmpg-double v1, v5, v7

    if-gtz v1, :cond_5

    .line 183
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 184
    sget-object v1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageRatioCache:Landroid/util/LruCache;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 186
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    goto :goto_3

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->localImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 190
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 191
    iget-object v3, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->localImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v3, :cond_5

    int-to-double v5, v1

    int-to-double v9, v3

    .line 193
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v9

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    if-nez v2, :cond_6

    .line 200
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    cmpl-double v1, v5, v7

    if-lez v1, :cond_9

    int-to-double v1, v0

    .line 202
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    double-to-int v4, v1

    goto :goto_4

    :cond_6
    if-nez v0, :cond_8

    if-eqz v2, :cond_8

    .line 205
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    cmpl-double v1, v5, v7

    if-lez v1, :cond_7

    int-to-double v1, v0

    .line 207
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    double-to-int v4, v1

    move v11, v4

    move v4, v0

    move v0, v11

    goto :goto_4

    :cond_7
    move v4, v0

    :cond_8
    const/4 v0, 0x0

    .line 211
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 212
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v11, v1

    move v1, v0

    move v0, v11

    .line 218
    :goto_5
    invoke-static {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 7

    .line 275
    check-cast p2, Landroid/widget/ImageView;

    .line 276
    new-instance v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;-><init>()V

    .line 277
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->scaleType:I

    invoke-virtual {p0, p2, v1}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->setImageScaleType(Landroid/widget/ImageView;I)V

    .line 280
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->needHandleDark()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->darkImageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->darkImageUrl:Ljava/lang/String;

    goto :goto_0

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageUrl:Ljava/lang/String;

    .line 291
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 292
    invoke-static {v0, v3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->access$002(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z

    .line 293
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->getMeasuredHeight()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_6

    .line 294
    :cond_2
    new-instance v2, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$1;

    invoke-direct {v2, p0, v1}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$1;-><init>(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->listener:Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageLoadListener;

    goto :goto_1

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->localImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 317
    invoke-virtual {p0, p2, v2}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->setLocalImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 318
    :cond_4
    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 319
    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageName:Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->setLocalRes(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 321
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    invoke-static {v0, v3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->access$002(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z

    .line 325
    :cond_6
    :goto_1
    invoke-static {v0}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->access$000(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 326
    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->placeHolderName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->placeHolderResId:I

    .line 327
    iget p1, v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->placeHolderResId:I

    if-nez p1, :cond_7

    .line 328
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->placeHolder:Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->placeHolder:Landroid/graphics/drawable/Drawable;

    .line 332
    :cond_7
    iget-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->needSetBackground:Z

    const/4 v2, 0x2

    if-eqz p1, :cond_9

    .line 334
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadius:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-lez p1, :cond_8

    .line 335
    new-array p1, v6, [I

    iget v6, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadius:I

    aput v6, p1, v5

    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadius:I

    aput v5, p1, v3

    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadius:I

    aput v5, p1, v2

    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadius:I

    aput v5, p1, v4

    goto :goto_2

    .line 337
    :cond_8
    new-array p1, v6, [I

    iget v6, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadiusLeftTop:I

    aput v6, p1, v5

    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadiusRightTop:I

    aput v5, p1, v3

    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadiusRightBottom:I

    aput v5, p1, v2

    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->cornerRadiusLeftBottom:I

    aput v5, p1, v4

    .line 340
    :goto_2
    iput-object p1, v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->cornerRadii:[I

    .line 341
    invoke-static {v0, v3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->access$102(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z

    .line 344
    :cond_9
    iget-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->needSetBackground:Z

    if-eqz p1, :cond_a

    .line 345
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->borderColor:I

    const-string v4, "borderColor"

    invoke-virtual {p0, v4, v2, p1}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result p1

    iput p1, v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->borderColor:I

    .line 346
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->borderWidth:I

    iput p1, v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->borderWidth:I

    .line 347
    invoke-static {v0, v3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->access$202(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z

    .line 348
    invoke-static {v0, v3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->access$302(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z

    .line 351
    :cond_a
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->layoutWidth:I

    const/4 v2, -0x2

    if-ne p1, v2, :cond_b

    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->layoutHeight:I

    if-eq p1, v2, :cond_b

    const-string p1, "heightLimit"

    .line 352
    iput-object p1, v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->sizeType:Ljava/lang/String;

    .line 353
    invoke-static {v0, v3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->access$402(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z

    goto :goto_3

    .line 354
    :cond_b
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->layoutWidth:I

    if-eq p1, v2, :cond_c

    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->layoutHeight:I

    if-ne p1, v2, :cond_c

    const-string/jumbo p1, "widthLimit"

    .line 355
    iput-object p1, v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->sizeType:Ljava/lang/String;

    .line 356
    invoke-static {v0, v3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->access$402(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z

    .line 359
    :cond_c
    :goto_3
    iget-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->animated:Z

    invoke-static {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->access$502(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z

    .line 360
    iget-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->autoRelease:Z

    iput-boolean p1, v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->autoRelease:Z

    .line 361
    iget-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->forceOriginal:Z

    invoke-static {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->access$602(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z

    .line 362
    iget-wide v2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->darkModeOverlayOpacity:D

    invoke-static {v0, v2, v3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->access$702(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;D)D

    .line 363
    iget-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->needDarkModeOverlay:Z

    invoke-static {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->access$802(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z

    .line 365
    invoke-static {}, Lcom/taobao/android/dinamicx/DXGlobalCenter;->getDxWebImageInterface()Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    .line 370
    :cond_d
    invoke-interface {p1, p2, v1, v0}, Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;)V

    return-void
.end method

.method protected onSetDoubleAttribute(JD)V
    .locals 3

    const-wide v0, 0x696419643c4a378aL    # 4.80779128386649E199

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 144
    iput-wide p3, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->aspectRatio:D

    goto :goto_0

    :cond_0
    const-wide v0, 0x12e2e988e1fe95f8L    # 1.0715099963193633E-217

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 146
    iput-wide p3, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->darkModeOverlayOpacity:D

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSetIntAttribute(JI)V
    .locals 5

    const-wide v0, 0xe165914fcab5bb3L    # 8.378797283285606E-241

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 114
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->scaleType:I

    goto :goto_0

    :cond_0
    const-wide v0, 0x102ee8a97340fa4bL    # 9.954420421345965E-231

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, v0, p1

    if-nez v4, :cond_2

    if-ne p3, v3, :cond_1

    const/4 v2, 0x1

    .line 116
    :cond_1
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->animated:Z

    goto :goto_0

    :cond_2
    const-wide v0, -0x297d48240a33d17bL    # -5.495061243768855E108

    cmp-long v4, v0, p1

    if-nez v4, :cond_4

    if-ne p3, v3, :cond_3

    const/4 v2, 0x1

    .line 118
    :cond_3
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->autoRelease:Z

    goto :goto_0

    :cond_4
    const-wide v0, -0x3ccaf041434e871L

    cmp-long v4, v0, p1

    if-nez v4, :cond_6

    if-ne p3, v3, :cond_5

    const/4 v2, 0x1

    .line 120
    :cond_5
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->asyncImageLoad:Z

    goto :goto_0

    :cond_6
    const-wide v0, -0x5a124a398d6297afL    # -5.486246849028935E-126

    cmp-long v4, p1, v0

    if-nez v4, :cond_8

    if-eqz p3, :cond_7

    const/4 v2, 0x1

    .line 122
    :cond_7
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->forceOriginal:Z

    goto :goto_0

    :cond_8
    const-wide v0, -0x60ed63e129b34568L    # -5.29474521520365E-159

    cmp-long v4, p1, v0

    if-nez v4, :cond_a

    if-eqz p3, :cond_9

    const/4 v2, 0x1

    .line 124
    :cond_9
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->needDarkModeOverlay:Z

    goto :goto_0

    .line 126
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetIntAttribute(JI)V

    :goto_0
    return-void
.end method

.method protected onSetObjAttribute(JLjava/lang/Object;)V
    .locals 3

    const-wide v0, 0x106831da1008L

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 153
    instance-of p1, p3, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 154
    nop

    nop

    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->localImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const-wide v0, 0x52ff33d38a18698eL    # 6.356050624455719E91

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 157
    instance-of p1, p3, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 158
    nop

    nop

    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->placeHolder:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSetStringAttribute(JLjava/lang/String;)V
    .locals 3

    const-wide v0, 0x5f1a365c5e0fa84dL    # 1.3406757844175753E150

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 99
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->darkImageUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-wide v0, 0x30dc582c251fba3eL    # 2.5066211307733665E-73

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 101
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-wide v0, 0x7ab61d8cad38a78dL    # 1.2846099642439877E283

    cmp-long v2, v0, p1

    if-nez v2, :cond_2

    .line 103
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-wide v0, 0x4a6a749e9c810813L    # 3.0931858120947338E50

    cmp-long v2, v0, p1

    if-nez v2, :cond_3

    .line 105
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->placeHolderName:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetStringAttribute(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAnimated(Z)V
    .locals 0

    .line 661
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->animated:Z

    return-void
.end method

.method public setAspectRatio(D)V
    .locals 0

    .line 641
    iput-wide p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->aspectRatio:D

    return-void
.end method

.method public setAsyncImageLoad(Z)V
    .locals 0

    .line 669
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->asyncImageLoad:Z

    return-void
.end method

.method public setAutoRelease(Z)V
    .locals 0

    .line 677
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->autoRelease:Z

    return-void
.end method

.method public setBackground(Landroid/view/View;)V
    .locals 3

    .line 381
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->needSetBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 382
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->backGroundColor:I

    const-string v2, "backGroundColor"

    invoke-virtual {p0, v2, v0, v1}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result v0

    .line 383
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageName:Ljava/lang/String;

    return-void
.end method

.method protected setImageScaleType(Landroid/widget/ImageView;I)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 243
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 240
    :cond_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 237
    :cond_1
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 234
    :cond_2
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method protected setLocalImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 388
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLocalImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->localImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected setLocalRes(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 393
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    sget v0, Lcom/taobao/android/dinamic/DinamicTagKey;->TAG_IMAGE_NAME:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    return-void

    .line 398
    :cond_0
    sget v0, Lcom/taobao/android/dinamic/DinamicTagKey;->TAG_IMAGE_NAME:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 399
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 403
    :cond_1
    new-instance v0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$LoadDrawableTask;

    invoke-direct {v0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$LoadDrawableTask;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 404
    iget-boolean v1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->asyncImageLoad:Z

    if-eqz v1, :cond_2

    .line 405
    sget v1, Lcom/taobao/android/dinamic/DinamicTagKey;->TAG_CURRENT_IMAGE_NAME:I

    invoke-virtual {p1, v1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 406
    new-array p1, p1, [Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->scheduledAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$LoadDrawableTask;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 409
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    sget v0, Lcom/taobao/android/dinamic/DinamicTagKey;->TAG_IMAGE_NAME:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setPlaceHolder(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->placeHolder:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPlaceHolderName(Ljava/lang/String;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->placeHolderName:Ljava/lang/String;

    return-void
.end method

.method public setScaleType(I)V
    .locals 0

    .line 625
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->scaleType:I

    return-void
.end method
