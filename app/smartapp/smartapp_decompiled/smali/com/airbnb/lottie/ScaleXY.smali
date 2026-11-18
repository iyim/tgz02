.class Lcom/airbnb/lottie/ScaleXY;
.super Ljava/lang/Object;
.source "ScaleXY.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/ScaleXY$Factory;
    }
.end annotation


# instance fields
.field private final scaleX:F

.field private final scaleY:F


# direct methods
.method constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    invoke-direct {p0, v0, v0}, Lcom/airbnb/lottie/ScaleXY;-><init>(FF)V

    return-void
.end method

.method constructor <init>(FF)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/airbnb/lottie/ScaleXY;->scaleX:F

    .line 11
    iput p2, p0, Lcom/airbnb/lottie/ScaleXY;->scaleY:F

    return-void
.end method


# virtual methods
.method getScaleX()F
    .locals 1

    .line 19
    iget v0, p0, Lcom/airbnb/lottie/ScaleXY;->scaleX:F

    return v0
.end method

.method getScaleY()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/airbnb/lottie/ScaleXY;->scaleY:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
