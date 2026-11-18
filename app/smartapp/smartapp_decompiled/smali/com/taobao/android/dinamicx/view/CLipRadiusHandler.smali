.class public Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;
.super Ljava/lang/Object;
.source "CLipRadiusHandler.java"


# instance fields
.field private bottomLeftRadius:F

.field private bottomRightRadius:F

.field private imagePaint:Landroid/graphics/Paint;

.field private roundPaint:Landroid/graphics/Paint;

.field private topLeftRadius:F

.field private topRightRadius:F

.field private useClipOutLine:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->useClipOutLine:Z

    return-void
.end method

.method private drawBottomLeft(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6

    .line 182
    iget v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomLeftRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 184
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    int-to-float p1, p1

    .line 185
    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomLeftRadius:F

    sub-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 186
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomLeftRadius:F

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomLeftRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    sub-float v5, p1, v5

    mul-float v3, v3, v4

    invoke-direct {v2, v1, v5, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2, p1, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 191
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawBottomRight(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 7

    .line 196
    iget v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomRightRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 199
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    int-to-float p1, p1

    .line 200
    iget v3, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomRightRadius:F

    sub-float v3, p1, v3

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 201
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 202
    iget v3, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomRightRadius:F

    sub-float v3, v0, v3

    invoke-virtual {v2, p1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 203
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomRightRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    sub-float v6, p1, v6

    mul-float v4, v4, v5

    sub-float v4, v0, v4

    invoke-direct {v3, v6, v4, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3, v1, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 205
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 206
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawTopLeft(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5

    .line 155
    iget p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topLeftRadius:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 156
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 157
    iget v1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topLeftRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 158
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 159
    iget v1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topLeftRadius:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 160
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topLeftRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v2, v3

    mul-float v2, v2, v3

    invoke-direct {v1, v0, v0, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v1, v0, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 163
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawTopRight(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6

    .line 168
    iget v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topRightRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 170
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    int-to-float p1, p1

    .line 171
    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topRightRadius:F

    sub-float v2, p1, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 172
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 173
    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topRightRadius:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topRightRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    sub-float v5, p1, v5

    mul-float v3, v3, v4

    invoke-direct {v2, v5, v1, p1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2, v1, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 177
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private prepare(Landroid/view/View;)V
    .locals 4

    .line 40
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->isSupportClipOutline()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 44
    iget v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topLeftRadius:F

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topRightRadius:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomLeftRadius:F

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    iget v3, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomRightRadius:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    float-to-int v0, v0

    .line 47
    new-instance v2, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$1;-><init>(Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 55
    iput-boolean v1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->useClipOutLine:Z

    return-void

    .line 59
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topLeftRadius:F

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topRightRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomLeftRadius:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomRightRadius:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    float-to-int v0, v0

    .line 61
    new-instance v2, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$2;

    invoke-direct {v2, p0, v0}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$2;-><init>(Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 70
    iput-boolean v1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->useClipOutLine:Z

    return-void

    .line 74
    :cond_1
    iget v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomLeftRadius:F

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomRightRadius:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topLeftRadius:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topRightRadius:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    float-to-int v0, v0

    .line 76
    new-instance v2, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$3;

    invoke-direct {v2, p0, v0}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$3;-><init>(Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 85
    iput-boolean v1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->useClipOutLine:Z

    return-void

    .line 89
    :cond_2
    iget v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topLeftRadius:F

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomLeftRadius:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topRightRadius:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomRightRadius:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    float-to-int v0, v0

    .line 91
    new-instance v2, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$4;

    invoke-direct {v2, p0, v0}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$4;-><init>(Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 99
    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 100
    iput-boolean v1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->useClipOutLine:Z

    return-void

    .line 104
    :cond_3
    iget v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topRightRadius:F

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomRightRadius:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topLeftRadius:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomLeftRadius:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    float-to-int v0, v0

    .line 106
    new-instance v2, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$5;

    invoke-direct {v2, p0, v0}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler$5;-><init>(Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 115
    iput-boolean v1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->useClipOutLine:Z

    return-void

    .line 120
    :cond_4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->roundPaint:Landroid/graphics/Paint;

    .line 121
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->roundPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->roundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->roundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 125
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->imagePaint:Landroid/graphics/Paint;

    .line 126
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->imagePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public afterDispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->drawTopLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->drawTopRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->drawBottomLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->drawBottomRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public beforeDispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 3

    .line 143
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->imagePaint:Landroid/graphics/Paint;

    const/16 v1, 0x1f

    invoke-virtual {p2, p1, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    return-void
.end method

.method public isSupportClipOutline()Z
    .locals 2

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUseClipOutLine()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->useClipOutLine:Z

    return v0
.end method

.method public setRadius(Landroid/view/View;F)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p2

    move v5, p2

    .line 130
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->setRadius(Landroid/view/View;FFFF)V

    return-void
.end method

.method public setRadius(Landroid/view/View;FFFF)V
    .locals 0

    .line 134
    iput p2, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topLeftRadius:F

    .line 135
    iput p3, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->topRightRadius:F

    .line 136
    iput p4, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomLeftRadius:F

    .line 137
    iput p5, p0, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->bottomRightRadius:F

    .line 139
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->prepare(Landroid/view/View;)V

    return-void
.end method
