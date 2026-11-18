.class public Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;
.super Ljava/lang/Object;
.source "CirBean.java"


# instance fields
.field public cirSize:I

.field public horizonMargin:I

.field public isCanMove:Z

.field public normalColor:I

.field public rectWidth:I

.field public scaleFactor:F

.field public selectedColor:I

.field public type:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicatorType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 19
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->normalColor:I

    .line 23
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->selectedColor:I

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->isCanMove:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CirBean;->scaleFactor:F

    return-void
.end method
