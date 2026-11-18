.class public Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "BlurringView.java"


# instance fields
.field private mBitmapToBlur:Landroid/graphics/Bitmap;

.field private mBlurInput:Landroid/renderscript/Allocation;

.field private mBlurOutput:Landroid/renderscript/Allocation;

.field private mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mBlurredBitmap:Landroid/graphics/Bitmap;

.field private mBlurredView:Landroid/view/View;

.field private mBlurredViewHeight:I

.field private mBlurredViewWidth:I

.field private mBlurringCanvas:Landroid/graphics/Canvas;

.field private mDownsampleFactor:I

.field private mDownsampleFactorChanged:Z

.field private mOverlayColor:I

.field private mRenderScript:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 24
    iput p2, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mDownsampleFactor:I

    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->initializeRenderScript(Landroid/content/Context;)V

    const/16 p1, 0xa

    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->setBlurRadius(I)V

    .line 55
    iget p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mDownsampleFactor:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->setDownsampleFactor(I)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_transparent:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->setOverlayColor(I)V

    return-void
.end method

.method private initializeRenderScript(Landroid/content/Context;)V
    .locals 1

    .line 111
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 113
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method


# virtual methods
.method protected blur()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurInput:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurOutput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurOutput:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->prepare()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredView:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->blur()V

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mDownsampleFactor:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 87
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mOverlayColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    return-void
.end method

.method protected prepare()Z
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 120
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mDownsampleFactorChanged:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredViewWidth:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredViewHeight:I

    if-eq v2, v1, :cond_4

    :cond_0
    const/4 v2, 0x0

    .line 122
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mDownsampleFactorChanged:Z

    .line 124
    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredViewWidth:I

    .line 125
    iput v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredViewHeight:I

    .line 127
    iget v4, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mDownsampleFactor:I

    div-int/2addr v0, v4

    .line 128
    div-int/2addr v1, v4

    .line 131
    rem-int/lit8 v4, v0, 0x4

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x4

    .line 132
    rem-int/lit8 v4, v1, 0x4

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x4

    .line 134
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 135
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v0, :cond_1

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 136
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 138
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 140
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    return v2

    .line 144
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    return v2

    .line 151
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mDownsampleFactor:I

    int-to-float v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v2, v4, v2

    int-to-float v1, v1

    div-float/2addr v4, v1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v0, v1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurInput:Landroid/renderscript/Allocation;

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurInput:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurOutput:Landroid/renderscript/Allocation;

    :cond_4
    return v3
.end method

.method public setBlurRadius(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    return-void
.end method

.method public setBlurredView(Landroid/view/View;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mBlurredView:Landroid/view/View;

    return-void
.end method

.method public setDownsampleFactor(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 100
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mDownsampleFactor:I

    if-eq v0, p1, :cond_0

    .line 101
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mDownsampleFactor:I

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mDownsampleFactorChanged:Z

    :cond_0
    return-void

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Downsample factor must be greater than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOverlayColor(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->mOverlayColor:I

    return-void
.end method
