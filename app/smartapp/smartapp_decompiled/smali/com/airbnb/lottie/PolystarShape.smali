.class Lcom/airbnb/lottie/PolystarShape;
.super Ljava/lang/Object;
.source "PolystarShape.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/PolystarShape$Factory;,
        Lcom/airbnb/lottie/PolystarShape$Type;
    }
.end annotation


# instance fields
.field private final innerRadius:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final innerRoundedness:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final name:Ljava/lang/String;

.field private final outerRadius:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final outerRoundedness:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final points:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final position:Lcom/airbnb/lottie/AnimatableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/AnimatableValue<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final type:Lcom/airbnb/lottie/PolystarShape$Type;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/PolystarShape$Type;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/PolystarShape$Type;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/AnimatableValue<",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/airbnb/lottie/PolystarShape;->name:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/airbnb/lottie/PolystarShape;->type:Lcom/airbnb/lottie/PolystarShape$Type;

    .line 47
    iput-object p3, p0, Lcom/airbnb/lottie/PolystarShape;->points:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 48
    iput-object p4, p0, Lcom/airbnb/lottie/PolystarShape;->position:Lcom/airbnb/lottie/AnimatableValue;

    .line 49
    iput-object p5, p0, Lcom/airbnb/lottie/PolystarShape;->rotation:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 50
    iput-object p6, p0, Lcom/airbnb/lottie/PolystarShape;->innerRadius:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 51
    iput-object p7, p0, Lcom/airbnb/lottie/PolystarShape;->outerRadius:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 52
    iput-object p8, p0, Lcom/airbnb/lottie/PolystarShape;->innerRoundedness:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 53
    iput-object p9, p0, Lcom/airbnb/lottie/PolystarShape;->outerRoundedness:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/PolystarShape$Type;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/PolystarShape$1;)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p9}, Lcom/airbnb/lottie/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/PolystarShape$Type;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    return-void
.end method


# virtual methods
.method getInnerRadius()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarShape;->innerRadius:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getInnerRoundedness()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarShape;->innerRoundedness:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarShape;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOuterRadius()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarShape;->outerRadius:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getOuterRoundedness()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarShape;->outerRoundedness:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getPoints()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarShape;->points:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getPosition()Lcom/airbnb/lottie/AnimatableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/AnimatableValue<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarShape;->position:Lcom/airbnb/lottie/AnimatableValue;

    return-object v0
.end method

.method getRotation()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarShape;->rotation:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getType()Lcom/airbnb/lottie/PolystarShape$Type;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarShape;->type:Lcom/airbnb/lottie/PolystarShape$Type;

    return-object v0
.end method
