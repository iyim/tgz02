.class Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageViewDragClose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Anim"
.end annotation


# instance fields
.field private duration:J

.field private easing:I

.field private interruptible:Z

.field private listener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

.field private origin:I

.field private sCenterEnd:Landroid/graphics/PointF;

.field private sCenterEndRequested:Landroid/graphics/PointF;

.field private sCenterStart:Landroid/graphics/PointF;

.field private scaleEnd:F

.field private scaleStart:F

.field private time:J

.field private vFocusEnd:Landroid/graphics/PointF;

.field private vFocusStart:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 3262
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->duration:J

    const/4 v0, 0x1

    .line 3263
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->interruptible:Z

    const/4 v1, 0x2

    .line 3264
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->easing:I

    .line 3265
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->origin:I

    .line 3266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->time:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V
    .locals 0

    .line 3253
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$2700(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Z
    .locals 0

    .line 3253
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->interruptible:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Z)Z
    .locals 0

    .line 3253
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->interruptible:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;
    .locals 0

    .line 3253
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->listener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;
    .locals 0

    .line 3253
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->listener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;
    .locals 0

    .line 3253
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->vFocusStart:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 3253
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->vFocusStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)J
    .locals 2

    .line 3253
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->time:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;J)J
    .locals 0

    .line 3253
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->time:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)J
    .locals 2

    .line 3253
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->duration:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;J)J
    .locals 0

    .line 3253
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->duration:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)I
    .locals 0

    .line 3253
    iget p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->easing:I

    return p0
.end method

.method static synthetic access$3402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;I)I
    .locals 0

    .line 3253
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->easing:I

    return p1
.end method

.method static synthetic access$3500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)F
    .locals 0

    .line 3253
    iget p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->scaleStart:F

    return p0
.end method

.method static synthetic access$3502(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;F)F
    .locals 0

    .line 3253
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->scaleStart:F

    return p1
.end method

.method static synthetic access$3600(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)F
    .locals 0

    .line 3253
    iget p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->scaleEnd:F

    return p0
.end method

.method static synthetic access$3602(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;F)F
    .locals 0

    .line 3253
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->scaleEnd:F

    return p1
.end method

.method static synthetic access$3700(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;
    .locals 0

    .line 3253
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->vFocusEnd:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 3253
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->vFocusEnd:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;
    .locals 0

    .line 3253
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->sCenterEnd:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 3253
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->sCenterEnd:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)I
    .locals 0

    .line 3253
    iget p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->origin:I

    return p0
.end method

.method static synthetic access$3902(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;I)I
    .locals 0

    .line 3253
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->origin:I

    return p1
.end method

.method static synthetic access$4400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;
    .locals 0

    .line 3253
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->sCenterStart:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 3253
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->sCenterStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;
    .locals 0

    .line 3253
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->sCenterEndRequested:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 3253
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->sCenterEndRequested:Landroid/graphics/PointF;

    return-object p1
.end method
