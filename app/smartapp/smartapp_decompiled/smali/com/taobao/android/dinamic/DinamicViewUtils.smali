.class public Lcom/taobao/android/dinamic/DinamicViewUtils;
.super Ljava/lang/Object;
.source "DinamicViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clipCorner(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    return-void

    .line 103
    :cond_1
    sget v0, Lcom/taobao/android/dinamic/DinamicTagKey;->LAYOUT_RADII:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    nop

    nop

    if-nez v0, :cond_2

    return-void

    .line 108
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 111
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-virtual {p0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 117
    :cond_3
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 118
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, v3, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 119
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public static getEventInfo(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "("

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, ")"

    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_3

    if-gez v2, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v4

    .line 53
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    return-object v1

    .line 46
    :cond_3
    :goto_0
    invoke-static {}, Lcom/taobao/android/dinamic/Dinamic;->isDebugable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    new-array v0, v4, [Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    const-string/jumbo p0, "\u4e8b\u4ef6\u5c5e\u6027:%s\u8bed\u6cd5\u51fa\u9519,\u6ca1\u6709\u5305\u542b\"\uff08\uff09\""

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "Dinamic"

    invoke-static {p0, v0}, Lcom/taobao/android/dinamic/log/DinamicLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method public static getViewDinamicProperty(Landroid/view/View;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/taobao/android/dinamic/DinamicViewUtils;->getViewProperty(Landroid/view/View;)Lcom/taobao/android/dinamic/property/DinamicProperty;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/android/dinamic/property/DinamicProperty;->dinamicProperty:Ljava/util/Map;

    return-object p0
.end method

.method public static getViewProperty(Landroid/view/View;)Lcom/taobao/android/dinamic/property/DinamicProperty;
    .locals 1

    if-nez p0, :cond_0

    .line 27
    new-instance p0, Lcom/taobao/android/dinamic/property/DinamicProperty;

    invoke-direct {p0}, Lcom/taobao/android/dinamic/property/DinamicProperty;-><init>()V

    return-object p0

    .line 30
    :cond_0
    sget v0, Lcom/taobao/android/dinamic/DinamicTagKey;->PROPERTY_KEY:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    .line 31
    new-instance p0, Lcom/taobao/android/dinamic/property/DinamicProperty;

    invoke-direct {p0}, Lcom/taobao/android/dinamic/property/DinamicProperty;-><init>()V

    goto :goto_0

    :cond_1
    check-cast p0, Lcom/taobao/android/dinamic/property/DinamicProperty;

    :goto_0
    return-object p0
.end method
