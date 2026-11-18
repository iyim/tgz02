.class public Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;
.super Landroid/widget/FrameLayout;
.source "GenieAnimationView.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$GestureAnimationListener;,
        Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$AnimationViewListener;
    }
.end annotation


# static fields
.field public static final TYPE_FRAME:I = 0x2

.field public static final TYPE_LOTTIE:I = 0x1

.field public static final TYPE_OBJECT_ANIMATOR:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private currentPlay:Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;

.field private defaultFPS:I

.field private frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

.field private frameImageView:Landroid/view/TextureView;

.field private listener:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$AnimationViewListener;

.field private ltView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mGestureAnimationListener:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$GestureAnimationListener;

.field private playList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "GenieAnimationView"

    .line 27
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->TAG:Ljava/lang/String;

    const/16 v0, 0x14

    .line 38
    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->defaultFPS:I

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->init()V

    .line 47
    sget-object v1, Lcom/alibaba/ailabs/genie/genieui/R$styleable;->GenieAnimationView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    sget p2, Lcom/alibaba/ailabs/genie/genieui/R$styleable;->GenieAnimationView_genieUiFps:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->setFps(I)V

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 61
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameImageView:Landroid/view/TextureView;

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameImageView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 65
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->ltView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 66
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameImageView:Landroid/view/TextureView;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->setAnimationListener(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;)V

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playList:Ljava/util/LinkedList;

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameImageView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private playAnimationSetInternal(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;",
            ">;Z)V"
        }
    .end annotation

    .line 118
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->TAG:Ljava/lang/String;

    const-string p2, "playAnimationSet: animation is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playNext()V

    :cond_1
    return-void
.end method

.method private playFrameAnimation([Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x2

    .line 140
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->switchPlayView(I)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->setAnimation([Ljava/lang/String;Z)V

    .line 142
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->start()V

    return-void
.end method

.method private playLottie(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->ltView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 85
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playLottieInternal()V

    return-void
.end method

.method private playLottie(Landroid/view/animation/Animation;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->ltView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 95
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playLottieInternal()V

    return-void
.end method

.method private playLottie(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->ltView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playLottieInternal()V

    return-void
.end method

.method private playLottieInternal()V
    .locals 1

    const/4 v0, 0x1

    .line 99
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->switchPlayView(I)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->ltView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private playNext()V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playList:Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->currentPlay:Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playList:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;

    .line 168
    instance-of v2, v0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;

    if-eqz v2, :cond_2

    .line 169
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->TAG:Ljava/lang/String;

    const-string v3, "playAnimationSet: play frame animation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object v2, v0

    check-cast v2, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;

    .line 171
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;->getFps()I

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playNext: fps:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;->getFps()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;->getFps()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->setFps(I)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    iget v4, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->defaultFPS:I

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->setFps(I)V

    .line 177
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;->getPath()[Ljava/lang/String;

    move-result-object v3

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;->loop:Z

    invoke-direct {p0, v3, v2}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playFrameAnimation([Ljava/lang/String;Z)V

    goto :goto_1

    .line 178
    :cond_2
    instance-of v2, v0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/ObjectAnimatorEntry;

    if-eqz v2, :cond_3

    .line 179
    move-object v2, v0

    check-cast v2, Lcom/alibaba/ailabs/genie/genieui/widget/animation/ObjectAnimatorEntry;

    .line 180
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playObjectAnimation(Lcom/alibaba/ailabs/genie/genieui/widget/animation/ObjectAnimatorEntry;)V

    goto :goto_1

    .line 181
    :cond_3
    instance-of v2, v0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/LottieAnimationEntry;

    if-eqz v2, :cond_4

    .line 182
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->TAG:Ljava/lang/String;

    const-string v3, "playAnimationSet: play lottie animation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    move-object v2, v0

    check-cast v2, Lcom/alibaba/ailabs/genie/genieui/widget/animation/LottieAnimationEntry;

    .line 184
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/LottieAnimationEntry;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playLottie(Ljava/lang/String;)V

    .line 187
    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->currentPlay:Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;

    .line 188
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->listener:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$AnimationViewListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->listener:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$AnimationViewListener;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$AnimationViewListener;->onLastAnimationPlayed()V

    :cond_5
    return-void
.end method

.method private switchPlayView(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 73
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->ltView:Lcom/airbnb/lottie/LottieAnimationView;

    if-ne v1, v2, :cond_0

    .line 74
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->removeView(Landroid/view/View;)V

    .line 75
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameImageView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameImageView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_1

    .line 77
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->stop()V

    .line 78
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameImageView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->removeView(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->ltView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isStop()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 159
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->isStop()Z

    move-result v0

    return v0
.end method

.method public onAnimationPlayEnd()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "onAnimationPlayEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->mGestureAnimationListener:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$GestureAnimationListener;

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$GestureAnimationListener;->onGestureAnimationComplete()V

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playNext()V

    return-void
.end method

.method public onAnimationPlayStart()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "onAnimationPlayStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->mGestureAnimationListener:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$GestureAnimationListener;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$GestureAnimationListener;->onGestureAnimationStart()V

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 221
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 223
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->ltView:Lcom/airbnb/lottie/LottieAnimationView;

    if-ne p1, v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->resume()V

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->ltView:Lcom/airbnb/lottie/LottieAnimationView;

    if-ne p1, v0, :cond_2

    .line 230
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_0

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->pause()V

    :goto_0
    return-void
.end method

.method public playAnimationSet(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->currentPlay:Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;->loop:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playAnimationSetInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public playAnimationSetImm(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->playAnimationSetInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public playObjectAnimation(Lcom/alibaba/ailabs/genie/genieui/widget/animation/ObjectAnimatorEntry;)V
    .locals 1

    if-nez p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->TAG:Ljava/lang/String;

    const-string v0, "object animator is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setFrameFPS(I)V
    .locals 1

    .line 104
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->defaultFPS:I

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->setFps(I)V

    return-void
.end method

.method public setGestureListener(Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$GestureAnimationListener;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->mGestureAnimationListener:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$GestureAnimationListener;

    return-void
.end method

.method public setListener(Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$AnimationViewListener;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->listener:Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView$AnimationViewListener;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->TAG:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->setTAG(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->ltView:Lcom/airbnb/lottie/LottieAnimationView;

    if-ne v0, v1, :cond_0

    .line 147
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->currentPlay:Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/GenieAnimationView;->frameAnimController:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->stop()V

    :goto_0
    return-void
.end method
