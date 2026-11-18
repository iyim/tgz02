.class public Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "GlideRoundTransformNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "jp.wasabeef.glide.transformations.RoundedCornersTransformation.1"

.field private static final VERSION:I = 0x1


# instance fields
.field private bgColor:I

.field private cornerType:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

.field private diameter:I

.field private margin:I

.field private radius:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 42
    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->ALL:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;-><init>(IILcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(IILcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 46
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    .line 47
    iget p1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    .line 48
    iput p2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    .line 49
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->cornerType:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    return-void
.end method

.method private drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v4, v3

    sub-float v4, p4, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 153
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    int-to-float v1, v1

    sub-float v1, p4, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 160
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v3, v3

    int-to-float v1, v1

    sub-float/2addr p4, v1

    invoke-direct {v0, v2, v3, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 170
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 172
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6

    .line 219
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    add-int v5, v1, v4

    int-to-float v5, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 221
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    int-to-float v1, v1

    sub-float v1, p4, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 223
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 224
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 229
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v4, v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {v0, v2, v4, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 231
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v4, v3

    sub-float v4, p4, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 233
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v4, v3

    sub-float v4, p3, v4

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 234
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    add-int v3, v1, v2

    int-to-float v3, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 176
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 178
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 202
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 204
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 205
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v3, v3

    sub-float/2addr p3, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 212
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    add-int v3, v1, v2

    int-to-float v3, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 187
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 189
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 190
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v4, v3

    sub-float/2addr p3, v4

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 194
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 196
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 198
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    add-int v3, v1, v2

    int-to-float v3, v3

    int-to-float v1, v1

    int-to-float v2, v2

    sub-float/2addr p4, v2

    invoke-direct {v0, v3, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 182
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 183
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v3, v3

    sub-float/2addr p3, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3

    .line 80
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v1, v0

    sub-float/2addr p3, v1

    int-to-float v0, v0

    sub-float/2addr p4, v0

    .line 83
    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$1;->$SwitchMap$com$alibaba$ailabs$genie$message$utils$GlideRoundTransformNew$CornerType:[I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->cornerType:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float p4, p3

    int-to-float p3, p3

    invoke-virtual {p1, v0, p4, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 127
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 121
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 118
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 115
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 112
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 109
    :pswitch_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 106
    :pswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 103
    :pswitch_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 100
    :pswitch_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 97
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 94
    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 91
    :pswitch_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 88
    :pswitch_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 85
    :pswitch_e
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float p4, p3

    int-to-float p3, p3

    invoke-virtual {p1, v0, p4, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

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

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    add-int v5, v1, v4

    int-to-float v5, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    add-int v4, v1, v3

    int-to-float v4, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 139
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 143
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v4, v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {v0, v2, v4, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 146
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 164
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 166
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 243
    instance-of v0, p1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;

    if-eqz v0, :cond_0

    nop

    nop

    iget v0, p1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->cornerType:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->cornerType:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    const-string v0, "jp.wasabeef.glide.transformations.RoundedCornersTransformation.1"

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->cornerType:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method public setBgColor(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->bgColor:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", diameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cornerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->cornerType:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

    .line 239
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;->name()Ljava/lang/String;

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

    .line 55
    invoke-static {p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->centerCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 58
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 60
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3, p4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 63
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 65
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->bgColor:I

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    iget v3, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-virtual {v1, v0, v4, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 74
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float p2, p3

    int-to-float p3, p4

    .line 75
    invoke-direct {p0, v1, v2, p2, p3}, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 257
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jp.wasabeef.glide.transformations.RoundedCornersTransformation.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->diameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->margin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew;->cornerType:Lcom/alibaba/ailabs/genie/message/utils/GlideRoundTransformNew$CornerType;

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

    .line 259
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method
