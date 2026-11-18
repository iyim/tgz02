.class Lcom/airbnb/lottie/ShapeStroke;
.super Ljava/lang/Object;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/ShapeStroke$Factory;,
        Lcom/airbnb/lottie/ShapeStroke$LineJoinType;,
        Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    }
.end annotation


# instance fields
.field private final capType:Lcom/airbnb/lottie/ShapeStroke$LineCapType;

.field private final color:Lcom/airbnb/lottie/AnimatableColorValue;

.field private final joinType:Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

.field private final lineDashPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/AnimatableFloatValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

.field private final width:Lcom/airbnb/lottie/AnimatableFloatValue;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeStroke$LineCapType;Lcom/airbnb/lottie/ShapeStroke$LineJoinType;)V
    .locals 0
    .param p2    # Lcom/airbnb/lottie/AnimatableFloatValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableColorValue;",
            "Lcom/airbnb/lottie/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/ShapeStroke$LineJoinType;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/airbnb/lottie/ShapeStroke;->name:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/airbnb/lottie/ShapeStroke;->offset:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 64
    iput-object p3, p0, Lcom/airbnb/lottie/ShapeStroke;->lineDashPattern:Ljava/util/List;

    .line 65
    iput-object p4, p0, Lcom/airbnb/lottie/ShapeStroke;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    .line 66
    iput-object p5, p0, Lcom/airbnb/lottie/ShapeStroke;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    .line 67
    iput-object p6, p0, Lcom/airbnb/lottie/ShapeStroke;->width:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 68
    iput-object p7, p0, Lcom/airbnb/lottie/ShapeStroke;->capType:Lcom/airbnb/lottie/ShapeStroke$LineCapType;

    .line 69
    iput-object p8, p0, Lcom/airbnb/lottie/ShapeStroke;->joinType:Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeStroke$LineCapType;Lcom/airbnb/lottie/ShapeStroke$LineJoinType;Lcom/airbnb/lottie/ShapeStroke$1;)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p8}, Lcom/airbnb/lottie/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeStroke$LineCapType;Lcom/airbnb/lottie/ShapeStroke$LineJoinType;)V

    return-void
.end method


# virtual methods
.method getCapType()Lcom/airbnb/lottie/ShapeStroke$LineCapType;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->capType:Lcom/airbnb/lottie/ShapeStroke$LineCapType;

    return-object v0
.end method

.method getColor()Lcom/airbnb/lottie/AnimatableColorValue;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    return-object v0
.end method

.method getDashOffset()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->offset:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getJoinType()Lcom/airbnb/lottie/ShapeStroke$LineJoinType;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->joinType:Lcom/airbnb/lottie/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method getLineDashPattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->lineDashPattern:Ljava/util/List;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    return-object v0
.end method

.method getWidth()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeStroke;->width:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method
