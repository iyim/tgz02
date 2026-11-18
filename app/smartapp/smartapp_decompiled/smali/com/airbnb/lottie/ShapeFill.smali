.class Lcom/airbnb/lottie/ShapeFill;
.super Ljava/lang/Object;
.source "ShapeFill.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/ShapeFill$Factory;
    }
.end annotation


# instance fields
.field private final color:Lcom/airbnb/lottie/AnimatableColorValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final fillEnabled:Z

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;)V
    .locals 0
    .param p4    # Lcom/airbnb/lottie/AnimatableColorValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/airbnb/lottie/AnimatableIntegerValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/airbnb/lottie/ShapeFill;->name:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/airbnb/lottie/ShapeFill;->fillEnabled:Z

    .line 19
    iput-object p3, p0, Lcom/airbnb/lottie/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    .line 20
    iput-object p4, p0, Lcom/airbnb/lottie/ShapeFill;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    .line 21
    iput-object p5, p0, Lcom/airbnb/lottie/ShapeFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/ShapeFill$1;)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p5}, Lcom/airbnb/lottie/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;)V

    return-void
.end method


# virtual methods
.method getColor()Lcom/airbnb/lottie/AnimatableColorValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    return-object v0
.end method

.method getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/ShapeFill;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    const-string v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableColorValue;->getInitialValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/airbnb/lottie/ShapeFill;->fillEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", opacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/ShapeFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    if-nez v1, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableIntegerValue;->getInitialValue()Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
