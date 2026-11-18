.class Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothVelocityScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "SpeedyLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmoothVelocityScroller"
.end annotation


# static fields
.field private static sPerInch:F = 25.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$102(F)F
    .locals 0

    .line 63
    sput p0, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothVelocityScroller;->sPerInch:F

    return p0
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 78
    sget v0, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager$SmoothVelocityScroller;->sPerInch:F

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
