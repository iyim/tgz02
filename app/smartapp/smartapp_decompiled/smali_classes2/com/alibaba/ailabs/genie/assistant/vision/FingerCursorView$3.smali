.class Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$3;
.super Ljava/lang/Object;
.source "FingerCursorView.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 116
    check-cast p3, Landroid/graphics/Point;

    .line 117
    check-cast p2, Landroid/graphics/Point;

    .line 118
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 119
    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 120
    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, v1

    int-to-float p3, p3

    mul-float p3, p3, p1

    float-to-int p1, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method
