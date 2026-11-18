.class Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HsvEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field endHsv:[F

.field outHsv:[F

.field startHsv:[F

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)V
    .locals 1

    .line 336
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 337
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->startHsv:[F

    .line 338
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->endHsv:[F

    .line 339
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->outHsv:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$1;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;-><init>(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;)V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7

    .line 344
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->startHsv:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 345
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->endHsv:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 348
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->endHsv:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->startHsv:[F

    aget v4, v3, v1

    sub-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 349
    aget v2, v0, v1

    sub-float/2addr v2, v4

    aput v2, v0, v1

    goto :goto_0

    .line 350
    :cond_0
    aget v2, v0, v1

    aget v3, v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, -0x3ccc0000    # -180.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 351
    aget v2, v0, v1

    add-float/2addr v2, v4

    aput v2, v0, v1

    .line 353
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->outHsv:[F

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->startHsv:[F

    aget v3, v2, v1

    iget-object v5, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->endHsv:[F

    aget v5, v5, v1

    aget v2, v2, v1

    sub-float/2addr v5, v2

    mul-float v5, v5, p1

    add-float/2addr v3, v5

    aput v3, v0, v1

    .line 354
    aget v2, v0, v1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 355
    aget v2, v0, v1

    sub-float/2addr v2, v4

    aput v2, v0, v1

    goto :goto_1

    .line 356
    :cond_2
    aget v2, v0, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 357
    aget v2, v0, v1

    add-float/2addr v2, v4

    aput v2, v0, v1

    .line 359
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->outHsv:[F

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->startHsv:[F

    const/4 v2, 0x1

    aget v3, v1, v2

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->endHsv:[F

    aget v5, v4, v2

    aget v6, v1, v2

    sub-float/2addr v5, v6

    mul-float v5, v5, p1

    add-float/2addr v3, v5

    aput v3, v0, v2

    const/4 v2, 0x2

    .line 360
    aget v3, v1, v2

    aget v4, v4, v2

    aget v1, v1, v2

    sub-float/2addr v4, v1

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 363
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rsub-int/lit8 p2, p2, 0x18

    shr-int p2, p3, p2

    shr-int/lit8 p2, p2, 0x18

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    add-int/lit8 p1, p1, 0x18

    shr-int p1, v0, p1

    .line 366
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->outHsv:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 336
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$HsvEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
