.class public Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;
.super Ljava/lang/Object;
.source "FrameAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;
    }
.end annotation


# instance fields
.field private i:I

.field private mAnimationListener:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;

.field private mCurrentFrame:I

.field private mDuration:I

.field private mFrameRess:[I

.field private mImageView:Landroid/widget/ImageView;

.field private mIsRepeat:Z

.field private mLastFrame:I

.field private mPause:Z

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;[IIZ)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->i:I

    .line 24
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mRunnable:Ljava/lang/Runnable;

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    .line 65
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mFrameRess:[I

    .line 66
    iput p3, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mDuration:I

    .line 67
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mLastFrame:I

    .line 68
    iput-boolean p4, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mIsRepeat:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mPause:Z

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;I)I
    .locals 0

    .line 5
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mCurrentFrame:I

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)I
    .locals 0

    .line 5
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->i:I

    return p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;I)I
    .locals 0

    .line 5
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->i:I

    return p1
.end method

.method static synthetic access$208(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)I
    .locals 2

    .line 5
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->i:I

    return v0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mAnimationListener:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)[I
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mFrameRess:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Landroid/widget/ImageView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)I
    .locals 0

    .line 5
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mLastFrame:I

    return p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mIsRepeat:Z

    return p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Ljava/lang/Runnable;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)I
    .locals 0

    .line 5
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mDuration:I

    return p0
.end method


# virtual methods
.method public isPause()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mPause:Z

    return v0
.end method

.method public pauseAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mPause:Z

    return-void
.end method

.method public playAnimation()V
    .locals 4

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mPause:Z

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public release()V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->stopAnimation()V

    return-void
.end method

.method public setAnimationListener(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mAnimationListener:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mPause:Z

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
