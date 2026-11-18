.class Lcom/airbnb/lottie/ShapePath;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/ShapePath$Factory;
    }
.end annotation


# instance fields
.field private final index:I

.field private final name:Ljava/lang/String;

.field private final shapePath:Lcom/airbnb/lottie/AnimatableShapeValue;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/airbnb/lottie/AnimatableShapeValue;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/airbnb/lottie/ShapePath;->name:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/airbnb/lottie/ShapePath;->index:I

    .line 15
    iput-object p3, p0, Lcom/airbnb/lottie/ShapePath;->shapePath:Lcom/airbnb/lottie/AnimatableShapeValue;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/airbnb/lottie/AnimatableShapeValue;Lcom/airbnb/lottie/ShapePath$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/ShapePath;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/AnimatableShapeValue;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/ShapePath;->name:Ljava/lang/String;

    return-object v0
.end method

.method getShapePath()Lcom/airbnb/lottie/AnimatableShapeValue;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/ShapePath;->shapePath:Lcom/airbnb/lottie/AnimatableShapeValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/ShapePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/airbnb/lottie/ShapePath;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/ShapePath;->shapePath:Lcom/airbnb/lottie/AnimatableShapeValue;

    .line 40
    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableShapeValue;->hasAnimation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
