.class Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lunet/org/chromium/base/AnimationFrameTimeHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Recorder"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Landroid/animation/TimeAnimator;

.field private c:[J

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const-class v0, Lunet/org/chromium/base/AnimationFrameTimeHistogram;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->b:Landroid/animation/TimeAnimator;

    .line 94
    iget-object v0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->b:Landroid/animation/TimeAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method

.method static synthetic a(Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;)V
    .locals 1

    .line 2098
    sget-boolean v0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->b:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2099
    iput v0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->d:I

    const/16 v0, 0x258

    .line 2100
    new-array v0, v0, [J

    iput-object v0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->c:[J

    .line 2101
    iget-object p0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->b:Landroid/animation/TimeAnimator;

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->start()V

    return-void
.end method

.method static synthetic b(Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;)Z
    .locals 1

    .line 2109
    iget-object v0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->b:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    .line 2110
    iget-object p0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->b:Landroid/animation/TimeAnimator;

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->end()V

    return v0
.end method

.method static synthetic c(Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;)[J
    .locals 0

    .line 2115
    iget-object p0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->c:[J

    return-object p0
.end method

.method static synthetic d(Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;)I
    .locals 0

    .line 2119
    iget p0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->d:I

    return p0
.end method

.method static synthetic e(Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;)V
    .locals 1

    const/4 v0, 0x0

    .line 2127
    iput-object v0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->c:[J

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 2

    .line 132
    iget p1, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->d:I

    iget-object p2, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->c:[J

    array-length p3, p2

    if-ne p1, p3, :cond_0

    .line 133
    iget-object p1, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->b:Landroid/animation/TimeAnimator;

    invoke-virtual {p1}, Landroid/animation/TimeAnimator;->end()V

    const/4 p1, 0x0

    .line 1127
    iput-object p1, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->c:[J

    const-string p1, "AnimationFrameTimeHistogram"

    const-string p2, "Animation frame time recording reached the maximum number. It\'s eitherthe animation took too long or recording end is not called."

    .line 135
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p3, p4, v0

    if-lez p3, :cond_1

    add-int/lit8 p3, p1, 0x1

    .line 142
    iput p3, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->d:I

    aput-wide p4, p2, p1

    :cond_1
    return-void
.end method
