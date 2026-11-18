.class Lcom/airbnb/lottie/CircleShape;
.super Ljava/lang/Object;
.source "CircleShape.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/CircleShape$Factory;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final position:Lcom/airbnb/lottie/AnimatableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/AnimatableValue<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Lcom/airbnb/lottie/AnimatablePointValue;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatablePointValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/AnimatableValue<",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/AnimatablePointValue;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/airbnb/lottie/CircleShape;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/airbnb/lottie/CircleShape;->position:Lcom/airbnb/lottie/AnimatableValue;

    .line 17
    iput-object p3, p0, Lcom/airbnb/lottie/CircleShape;->size:Lcom/airbnb/lottie/AnimatablePointValue;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/CircleShape$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatablePointValue;)V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/CircleShape;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lcom/airbnb/lottie/AnimatableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/AnimatableValue<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/airbnb/lottie/CircleShape;->position:Lcom/airbnb/lottie/AnimatableValue;

    return-object v0
.end method

.method public getSize()Lcom/airbnb/lottie/AnimatablePointValue;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/CircleShape;->size:Lcom/airbnb/lottie/AnimatablePointValue;

    return-object v0
.end method
