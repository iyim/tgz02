.class Lcom/airbnb/lottie/NullLayer;
.super Lcom/airbnb/lottie/BaseLayer;
.source "NullLayer.java"


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
