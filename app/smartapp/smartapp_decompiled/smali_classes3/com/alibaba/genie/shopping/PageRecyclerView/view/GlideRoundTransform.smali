.class public Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "GlideRoundTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "jp.wasabeef.glide.transformations.RoundedCornersTransformation.1"

.field private static final VERSION:I = 0x1


# instance fields
.field private cornerType:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

.field private diameter:I

.field private margin:I

.field private radius:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 41
    sget-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;->ALL:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;-><init>(IILcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(IILcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 45
    iput p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    .line 46
    iget p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    .line 47
    iput p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    .line 48
    iput-object p3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->cornerType:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    return-void
.end method

.method private drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 141
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v4, v3

    sub-float v4, p4, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 143
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 144
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    int-to-float v1, v1

    sub-float v1, p4, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 151
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v3, v3

    int-to-float v1, v1

    sub-float/2addr p4, v1

    invoke-direct {v0, v2, v3, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 161
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 163
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    add-int v5, v1, v4

    int-to-float v5, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 212
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    int-to-float v1, v1

    sub-float v1, p4, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 215
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 220
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v4, v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {v0, v2, v4, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 222
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v4, v3

    sub-float v4, p4, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 224
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v4, v3

    sub-float v4, p3, v4

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 225
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

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

    .line 167
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 169
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 193
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 195
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 196
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

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

    .line 201
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 203
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 205
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

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

    .line 178
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 180
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 181
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

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

    .line 185
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 187
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 189
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

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

    .line 173
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 174
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v3, v3

    sub-float/2addr p3, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3

    .line 71
    iget v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v1, v0

    sub-float/2addr p3, v1

    int-to-float v0, v0

    sub-float/2addr p4, v0

    .line 74
    sget-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$1;->$SwitchMap$com$alibaba$genie$shopping$PageRecyclerView$view$GlideRoundTransform$CornerType:[I

    iget-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->cornerType:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 121
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float p4, p3

    int-to-float p3, p3

    invoke-virtual {p1, v0, p4, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 118
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 109
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 106
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 103
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 100
    :pswitch_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 97
    :pswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 94
    :pswitch_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 91
    :pswitch_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 88
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 85
    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 82
    :pswitch_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 79
    :pswitch_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 76
    :pswitch_e
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

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

    .line 127
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    add-int v5, v1, v4

    int-to-float v5, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    add-int v4, v1, v3

    int-to-float v4, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    iget v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v4, v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {v0, v2, v4, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 137
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 236
    instance-of v0, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;

    if-eqz v0, :cond_0

    nop

    nop

    iget v0, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->cornerType:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->cornerType:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

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

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->cornerType:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", diameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cornerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->cornerType:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    .line 231
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-static {p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->centerCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 56
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 57
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 59
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3, p4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 62
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 64
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float p2, p3

    int-to-float p3, p4

    .line 66
    invoke-direct {p0, v1, v2, p2, p3}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 252
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jp.wasabeef.glide.transformations.RoundedCornersTransformation.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->diameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->margin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;->cornerType:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

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

    .line 254
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method
