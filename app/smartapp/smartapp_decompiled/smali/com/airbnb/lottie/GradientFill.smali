.class Lcom/airbnb/lottie/GradientFill;
.super Ljava/lang/Object;
.source "GradientFill.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/GradientFill$Factory;
    }
.end annotation


# instance fields
.field private final endPoint:Lcom/airbnb/lottie/AnimatablePointValue;

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final gradientColor:Lcom/airbnb/lottie/AnimatableGradientColorValue;

.field private final gradientType:Lcom/airbnb/lottie/GradientType;

.field private final highlightAngle:Lcom/airbnb/lottie/AnimatableFloatValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final highlightLength:Lcom/airbnb/lottie/AnimatableFloatValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

.field private final startPoint:Lcom/airbnb/lottie/AnimatablePointValue;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableGradientColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/airbnb/lottie/GradientFill;->gradientType:Lcom/airbnb/lottie/GradientType;

    .line 27
    iput-object p3, p0, Lcom/airbnb/lottie/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    .line 28
    iput-object p4, p0, Lcom/airbnb/lottie/GradientFill;->gradientColor:Lcom/airbnb/lottie/AnimatableGradientColorValue;

    .line 29
    iput-object p5, p0, Lcom/airbnb/lottie/GradientFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    .line 30
    iput-object p6, p0, Lcom/airbnb/lottie/GradientFill;->startPoint:Lcom/airbnb/lottie/AnimatablePointValue;

    .line 31
    iput-object p7, p0, Lcom/airbnb/lottie/GradientFill;->endPoint:Lcom/airbnb/lottie/AnimatablePointValue;

    .line 32
    iput-object p1, p0, Lcom/airbnb/lottie/GradientFill;->name:Ljava/lang/String;

    .line 33
    iput-object p8, p0, Lcom/airbnb/lottie/GradientFill;->highlightLength:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 34
    iput-object p9, p0, Lcom/airbnb/lottie/GradientFill;->highlightAngle:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableGradientColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/GradientFill$1;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p9}, Lcom/airbnb/lottie/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableGradientColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    return-void
.end method


# virtual methods
.method getEndPoint()Lcom/airbnb/lottie/AnimatablePointValue;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFill;->endPoint:Lcom/airbnb/lottie/AnimatablePointValue;

    return-object v0
.end method

.method getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method getGradientColor()Lcom/airbnb/lottie/AnimatableGradientColorValue;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFill;->gradientColor:Lcom/airbnb/lottie/AnimatableGradientColorValue;

    return-object v0
.end method

.method getGradientType()Lcom/airbnb/lottie/GradientType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFill;->gradientType:Lcom/airbnb/lottie/GradientType;

    return-object v0
.end method

.method getHighlightAngle()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFill;->highlightAngle:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getHighlightLength()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFill;->highlightLength:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFill;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    return-object v0
.end method

.method getStartPoint()Lcom/airbnb/lottie/AnimatablePointValue;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFill;->startPoint:Lcom/airbnb/lottie/AnimatablePointValue;

    return-object v0
.end method
