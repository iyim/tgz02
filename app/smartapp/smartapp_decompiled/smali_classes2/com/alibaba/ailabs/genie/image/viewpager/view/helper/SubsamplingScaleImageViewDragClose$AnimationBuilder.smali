.class public final Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageViewDragClose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AnimationBuilder"
.end annotation


# instance fields
.field private duration:J

.field private easing:I

.field private interruptible:Z

.field private listener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

.field private origin:I

.field private panLimited:Z

.field private final targetSCenter:Landroid/graphics/PointF;

.field private final targetScale:F

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

.field private final vFocus:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;F)V
    .locals 2

    .line 3370
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 3357
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->duration:J

    const/4 v0, 0x2

    .line 3358
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->easing:I

    const/4 v0, 0x1

    .line 3359
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->origin:I

    .line 3360
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->interruptible:Z

    .line 3361
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->panLimited:Z

    .line 3371
    iput p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->targetScale:F

    .line 3372
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 3373
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FLandroid/graphics/PointF;)V
    .locals 2

    .line 3376
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 3357
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->duration:J

    const/4 p1, 0x2

    .line 3358
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->easing:I

    const/4 p1, 0x1

    .line 3359
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->origin:I

    .line 3360
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->interruptible:Z

    .line 3361
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->panLimited:Z

    .line 3377
    iput p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->targetScale:F

    .line 3378
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 3379
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    .line 3382
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 3357
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->duration:J

    const/4 p1, 0x2

    .line 3358
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->easing:I

    const/4 p1, 0x1

    .line 3359
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->origin:I

    .line 3360
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->interruptible:Z

    .line 3361
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->panLimited:Z

    .line 3383
    iput p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->targetScale:F

    .line 3384
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    .line 3385
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V
    .locals 0

    .line 3352
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FLandroid/graphics/PointF;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V
    .locals 0

    .line 3352
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FLandroid/graphics/PointF;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FLcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V
    .locals 0

    .line 3352
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;F)V

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/PointF;)V
    .locals 2

    .line 3364
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 3357
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->duration:J

    const/4 v0, 0x2

    .line 3358
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->easing:I

    const/4 v0, 0x1

    .line 3359
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->origin:I

    .line 3360
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->interruptible:Z

    .line 3361
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->panLimited:Z

    .line 3365
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$1000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)F

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->targetScale:F

    .line 3366
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 3367
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/PointF;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V
    .locals 0

    .line 3352
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;Z)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;
    .locals 0

    .line 3352
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->withPanLimited(Z)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;I)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;
    .locals 0

    .line 3352
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->withOrigin(I)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    move-result-object p0

    return-object p0
.end method

.method private withOrigin(I)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3457
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->origin:I

    return-object p0
.end method

.method private withPanLimited(Z)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3448
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->panLimited:Z

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 9

    .line 3465
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$2800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3467
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$2800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;->onInterruptedByNewAnim()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3469
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$5500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error thrown by animation listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3473
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 3474
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 3475
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    iget v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->targetScale:F

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;F)F

    move-result v2

    .line 3476
    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->panLimited:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 3477
    invoke-static {v3, v4, v5, v2, v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6600(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    .line 3479
    :goto_1
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    new-instance v5, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V

    invoke-static {v4, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    .line 3480
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$1000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3502(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;F)F

    .line 3481
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3602(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;F)F

    .line 3482
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v4, v7, v8}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3202(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;J)J

    .line 3483
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$4502(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3484
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getCenter()Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$4402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3485
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3802(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3486
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v5, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3102(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3487
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v3

    new-instance v4, Landroid/graphics/PointF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3702(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3488
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v0

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->duration:J

    invoke-static {v0, v3, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3302(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;J)J

    .line 3489
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->interruptible:Z

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$2702(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Z)Z

    .line 3490
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->easing:I

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;I)I

    .line 3491
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->origin:I

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3902(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;I)I

    .line 3492
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3202(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;J)J

    .line 3493
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->listener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$2802(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

    .line 3495
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    .line 3497
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$4400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    .line 3498
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$4400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    .line 3499
    new-instance v3, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v3, v2, v4, v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V

    .line 3503
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;ZLcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)V

    .line 3505
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    move-result-object v2

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v0

    add-float/2addr v5, v6

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 3506
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v1

    add-float/2addr v0, v3

    invoke-direct {v4, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 3505
    invoke-static {v2, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3702(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3509
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    return-void
.end method

.method public withDuration(J)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3396
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->duration:J

    return-object p0
.end method

.method public withEasing(I)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3420
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->access$6300()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3423
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->easing:I

    return-object p0

    .line 3421
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown easing type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withInterruptible(Z)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3408
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->interruptible:Z

    return-object p0
.end method

.method public withOnAnimationEventListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3436
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->listener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

    return-object p0
.end method
