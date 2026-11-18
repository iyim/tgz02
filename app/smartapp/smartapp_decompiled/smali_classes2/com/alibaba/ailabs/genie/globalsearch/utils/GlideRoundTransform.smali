.class public Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "GlideRoundTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "RoundedCornersTransformation.1"


# instance fields
.field private bgColor:I

.field private cornerType:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

.field private diameter:F

.field private margin:I

.field private radius:F


# direct methods
.method public constructor <init>(FI)V
    .locals 1

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;->ALL:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;-><init>(FILcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(FILcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 44
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    .line 45
    iget p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    .line 46
    iput p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    .line 47
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->cornerType:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

    return-void
.end method

.method private drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v4, p4, v3

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    int-to-float v1, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    add-float/2addr v1, v4

    iget v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    sub-float v4, p4, v4

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 151
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    add-float/2addr v2, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v2, p3, v1

    sub-float v1, p4, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 158
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    sub-float v2, p3, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v3, v3

    sub-float/2addr p4, v1

    invoke-direct {v0, v2, v3, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 168
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 170
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6

    .line 217
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    int-to-float v4, v1

    iget v5, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    add-float/2addr v4, v5

    int-to-float v1, v1

    add-float/2addr v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 219
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v2, p3, v1

    sub-float v1, p4, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 221
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 222
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    add-float/2addr v2, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 227
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v2, p3, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v4, v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-direct {v0, v2, v4, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 229
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v4, p4, v3

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 231
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    sub-float v4, p3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 232
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    add-float/2addr v2, v3

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 174
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    int-to-float v1, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    add-float/2addr v1, v4

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 176
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    add-float/2addr v2, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 200
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    int-to-float v1, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    add-float/2addr v1, v4

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 202
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 203
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    add-float/2addr v1, v3

    sub-float/2addr p3, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 208
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    int-to-float v1, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    add-float/2addr v1, v4

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    int-to-float v1, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    add-float/2addr v1, v4

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 212
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    add-float/2addr v2, v3

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 185
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 187
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 188
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    sub-float/2addr p3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 192
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    int-to-float v1, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    add-float/2addr v1, v4

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 194
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 196
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    add-float/2addr v2, v3

    int-to-float v1, v1

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 180
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 181
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    sub-float/2addr p3, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3

    .line 78
    iget v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v1, v0

    sub-float/2addr p3, v1

    int-to-float v0, v0

    sub-float/2addr p4, v0

    .line 81
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$1;->$SwitchMap$com$alibaba$ailabs$genie$globalsearch$utils$GlideRoundTransform$CornerType:[I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->cornerType:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 119
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 116
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 113
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 110
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 107
    :pswitch_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 104
    :pswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 101
    :pswitch_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 98
    :pswitch_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 95
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 92
    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 89
    :pswitch_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 86
    :pswitch_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 83
    :pswitch_e
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    int-to-float v4, v1

    iget v5, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    add-float/2addr v4, v5

    int-to-float v1, v1

    add-float/2addr v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    add-float/2addr v3, v4

    int-to-float v1, v1

    add-float/2addr v1, v4

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 137
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    add-float/2addr v2, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 141
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    sub-float v2, p3, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v4, v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-direct {v0, v2, v4, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 143
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 144
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    sub-float v2, p3, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-direct {v0, v2, v3, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 162
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    int-to-float v1, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    add-float/2addr v1, v4

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 164
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    add-float/2addr v1, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 243
    instance-of v0, p1, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;

    if-eqz v0, :cond_0

    nop

    nop

    iget v0, p1, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->cornerType:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->cornerType:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    const-string v0, "RoundedCornersTransformation.1"

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    const v2, 0x461c4000    # 10000.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    mul-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->cornerType:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public setBgColor(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->bgColor:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", diameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cornerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->cornerType:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

    .line 238
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-static {p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->centerCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 56
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 58
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3, p4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 61
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 63
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->bgColor:I

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 69
    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 72
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float p2, p3

    int-to-float p3, p4

    .line 73
    invoke-direct {p0, v1, v2, p2, p3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 259
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedCornersTransformation.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->diameter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->margin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;->cornerType:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method
