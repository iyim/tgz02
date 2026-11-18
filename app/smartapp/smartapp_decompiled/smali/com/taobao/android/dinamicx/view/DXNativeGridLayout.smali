.class public Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;
.super Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;
.source "DXNativeGridLayout.java"


# instance fields
.field private linePts:[F

.field private needSeparator:Z

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->needSeparator:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->linePts:[F

    iget-object v1, p0, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setLines(ZII[F)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # [F
        .annotation build Landroid/support/annotation/Size;
            multiple = 0x4L
        .end annotation
    .end param

    .line 36
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->needSeparator:Z

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    .line 39
    array-length p1, p4

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->paint:Landroid/graphics/Paint;

    if-nez p1, :cond_1

    .line 45
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->paint:Landroid/graphics/Paint;

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->paint:Landroid/graphics/Paint;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iput-object p4, p0, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->linePts:[F

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->needSeparator:Z

    :cond_3
    :goto_1
    return-void
.end method
