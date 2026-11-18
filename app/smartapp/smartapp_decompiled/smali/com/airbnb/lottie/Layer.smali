.class Lcom/airbnb/lottie/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/Layer$Factory;,
        Lcom/airbnb/lottie/Layer$MatteType;,
        Lcom/airbnb/lottie/Layer$LayerType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Layer"


# instance fields
.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final inOutKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final layerId:J

.field private final layerName:Ljava/lang/String;

.field private final layerType:Lcom/airbnb/lottie/Layer$LayerType;

.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Mask;",
            ">;"
        }
    .end annotation
.end field

.field private final matteType:Lcom/airbnb/lottie/Layer$MatteType;

.field private final parentId:J

.field private final preCompHeight:I

.field private final preCompWidth:I

.field private final refId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final solidColor:I

.field private final solidHeight:I

.field private final solidWidth:I

.field private final startProgress:F

.field private final timeStretch:F

.field private final transform:Lcom/airbnb/lottie/AnimatableTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILjava/util/List;Lcom/airbnb/lottie/Layer$MatteType;)V
    .locals 3
    .param p9    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/lang/String;",
            "J",
            "Lcom/airbnb/lottie/Layer$LayerType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Mask;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableTransform;",
            "IIIFFII",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/airbnb/lottie/Layer$MatteType;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 60
    iput-object v1, v0, Lcom/airbnb/lottie/Layer;->shapes:Ljava/util/List;

    move-object v1, p2

    .line 61
    iput-object v1, v0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v1, p3

    .line 62
    iput-object v1, v0, Lcom/airbnb/lottie/Layer;->layerName:Ljava/lang/String;

    move-wide v1, p4

    .line 63
    iput-wide v1, v0, Lcom/airbnb/lottie/Layer;->layerId:J

    move-object v1, p6

    .line 64
    iput-object v1, v0, Lcom/airbnb/lottie/Layer;->layerType:Lcom/airbnb/lottie/Layer$LayerType;

    move-wide v1, p7

    .line 65
    iput-wide v1, v0, Lcom/airbnb/lottie/Layer;->parentId:J

    move-object v1, p9

    .line 66
    iput-object v1, v0, Lcom/airbnb/lottie/Layer;->refId:Ljava/lang/String;

    move-object v1, p10

    .line 67
    iput-object v1, v0, Lcom/airbnb/lottie/Layer;->masks:Ljava/util/List;

    move-object v1, p11

    .line 68
    iput-object v1, v0, Lcom/airbnb/lottie/Layer;->transform:Lcom/airbnb/lottie/AnimatableTransform;

    move v1, p12

    .line 69
    iput v1, v0, Lcom/airbnb/lottie/Layer;->solidWidth:I

    move/from16 v1, p13

    .line 70
    iput v1, v0, Lcom/airbnb/lottie/Layer;->solidHeight:I

    move/from16 v1, p14

    .line 71
    iput v1, v0, Lcom/airbnb/lottie/Layer;->solidColor:I

    move/from16 v1, p15

    .line 72
    iput v1, v0, Lcom/airbnb/lottie/Layer;->timeStretch:F

    move/from16 v1, p16

    .line 73
    iput v1, v0, Lcom/airbnb/lottie/Layer;->startProgress:F

    move/from16 v1, p17

    .line 74
    iput v1, v0, Lcom/airbnb/lottie/Layer;->preCompWidth:I

    move/from16 v1, p18

    .line 75
    iput v1, v0, Lcom/airbnb/lottie/Layer;->preCompHeight:I

    move-object/from16 v1, p19

    .line 76
    iput-object v1, v0, Lcom/airbnb/lottie/Layer;->inOutKeyframes:Ljava/util/List;

    move-object/from16 v1, p20

    .line 77
    iput-object v1, v0, Lcom/airbnb/lottie/Layer;->matteType:Lcom/airbnb/lottie/Layer$MatteType;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILjava/util/List;Lcom/airbnb/lottie/Layer$MatteType;Lcom/airbnb/lottie/Layer$1;)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p20}, Lcom/airbnb/lottie/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILjava/util/List;Lcom/airbnb/lottie/Layer$MatteType;)V

    return-void
.end method


# virtual methods
.method getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method getId()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/airbnb/lottie/Layer;->layerId:J

    return-wide v0
.end method

.method getInOutKeyframes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->inOutKeyframes:Ljava/util/List;

    return-object v0
.end method

.method getLayerType()Lcom/airbnb/lottie/Layer$LayerType;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->layerType:Lcom/airbnb/lottie/Layer$LayerType;

    return-object v0
.end method

.method getMasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Mask;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->masks:Ljava/util/List;

    return-object v0
.end method

.method getMatteType()Lcom/airbnb/lottie/Layer$MatteType;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->matteType:Lcom/airbnb/lottie/Layer$MatteType;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->layerName:Ljava/lang/String;

    return-object v0
.end method

.method getParentId()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/airbnb/lottie/Layer;->parentId:J

    return-wide v0
.end method

.method getPreCompHeight()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/airbnb/lottie/Layer;->preCompHeight:I

    return v0
.end method

.method getPreCompWidth()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/airbnb/lottie/Layer;->preCompWidth:I

    return v0
.end method

.method getRefId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->refId:Ljava/lang/String;

    return-object v0
.end method

.method getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->shapes:Ljava/util/List;

    return-object v0
.end method

.method getSolidColor()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/airbnb/lottie/Layer;->solidColor:I

    return v0
.end method

.method getSolidHeight()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/airbnb/lottie/Layer;->solidHeight:I

    return v0
.end method

.method getSolidWidth()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/airbnb/lottie/Layer;->solidWidth:I

    return v0
.end method

.method getStartProgress()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/airbnb/lottie/Layer;->startProgress:F

    return v0
.end method

.method getTimeStretch()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/airbnb/lottie/Layer;->timeStretch:F

    return v0
.end method

.method getTransform()Lcom/airbnb/lottie/AnimatableTransform;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->transform:Lcom/airbnb/lottie/AnimatableTransform;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 153
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v2, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getParentId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/Layer;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "\t\tParents: "

    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v3, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/Layer;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "->"

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v3, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/Layer;

    move-result-object v2

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidWidth()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidHeight()I

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%dx%d %X\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/Layer;->shapes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v2, p0, Lcom/airbnb/lottie/Layer;->shapes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 182
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
