.class public Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;
.super Landroid/os/Handler;
.source "TBToastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$Messages;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ManagerTBToast"

.field private static mTBToastManager:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;


# instance fields
.field private mCurrentScale:F

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallerScale:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mCurrentScale:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 42
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mSmallerScale:F

    .line 47
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mQueue:Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mCurrentScale:F

    return p0
.end method

.method static synthetic access$002(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mCurrentScale:F

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->sendMessageDelayed(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private displayTBToast(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V
    .locals 9

    .line 173
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 184
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getView()Landroid/view/View;

    move-result-object v1

    .line 187
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getWindowManagerParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v0, :cond_5

    .line 190
    instance-of v3, p1, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;

    if-eqz v3, :cond_4

    .line 192
    :try_start_0
    move-object v3, p1

    nop

    nop

    invoke-virtual {v3}, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-wide/16 v4, 0x0

    const v6, 0x525354

    if-eqz v3, :cond_3

    .line 193
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_3

    .line 194
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_2

    .line 195
    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getDuration()J

    move-result-wide v0

    invoke-direct {p0, p1, v6, v0, v1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->sendMessageDelayed(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-direct {p0, p1, v6, v4, v5}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->sendMessageDelayed(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getDuration()J

    move-result-wide v0

    invoke-direct {p0, p1, v6, v0, v1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->sendMessageDelayed(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V

    goto :goto_0

    .line 206
    :cond_3
    invoke-direct {p0, p1, v6, v4, v5}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->sendMessageDelayed(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    .line 213
    :cond_4
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    const/4 v0, 0x0

    const-wide/16 v1, 0x640

    .line 217
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->sendMessageDelayed(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V

    return-void
.end method

.method private getDuration(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)J
    .locals 4

    .line 119
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected static declared-synchronized getInstance()Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;
    .locals 2

    const-class v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mTBToastManager:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mTBToastManager:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 60
    :cond_0
    :try_start_1
    new-instance v1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    invoke-direct {v1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;-><init>()V

    sput-object v1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mTBToastManager:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    .line 62
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mTBToastManager:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sendMessageDelayed(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V
    .locals 0

    .line 110
    invoke-virtual {p0, p2}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 111
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    invoke-virtual {p0, p2, p3, p4}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showNextTBToast()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    .line 92
    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x415354    # 5.9992E-39f

    .line 94
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 95
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const v1, 0x445354

    .line 101
    invoke-direct {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->getDuration(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)J

    move-result-wide v2

    .line 100
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->sendMessageDelayed(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected add(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->showNextTBToast()V

    return-void
.end method

.method protected cancelAllTBToasts()V
    .locals 3

    const v0, 0x415354    # 5.9992E-39f

    .line 275
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->removeMessages(I)V

    const v0, 0x445354

    .line 276
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->removeMessages(I)V

    const v0, 0x525354

    .line 277
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->removeMessages(I)V

    .line 279
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    .line 281
    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 284
    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getView()Landroid/view/View;

    move-result-object v1

    .line 283
    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 129
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    .line 132
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_3

    const v2, 0x415354    # 5.9992E-39f

    if-eq v1, v2, :cond_2

    const v2, 0x445354

    if-eq v1, v2, :cond_1

    const v2, 0x525354

    if-eq v1, v2, :cond_0

    .line 160
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->removeTBToast(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->showNextTBToast()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->displayTBToast(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->startSmallerAnim(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V

    :goto_0
    return-void
.end method

.method protected removeTBToast(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V
    .locals 7

    .line 223
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    const v3, 0x445354

    if-eqz v0, :cond_3

    .line 230
    instance-of v4, p1, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;

    if-eqz v4, :cond_3

    .line 232
    :try_start_0
    move-object v4, p1

    nop

    nop

    invoke-virtual {v4}, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 235
    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 236
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_1

    .line 237
    invoke-virtual {v4}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 238
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 244
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 245
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->sendMessageDelayed(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 254
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    .line 256
    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 257
    invoke-virtual {v4, v5}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz v0, :cond_4

    .line 261
    iget-object v5, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 263
    invoke-interface {v0, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 265
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->sendMessageDelayed(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V

    :cond_4
    return-void
.end method

.method protected startSmallerAnim(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V
    .locals 9

    .line 297
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getView()Landroid/view/View;

    move-result-object v7

    const/4 v0, 0x1

    .line 298
    invoke-virtual {v7, v0}, Landroid/view/View;->setClickable(Z)V

    .line 299
    invoke-virtual {v7, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 300
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .line 301
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getWindowManagerParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const/4 v1, 0x2

    .line 303
    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    iget v2, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->mSmallerScale:F

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 304
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$1;

    invoke-direct {v0, p0, v7, p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$1;-><init>(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;Landroid/view/View;Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 319
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$2;

    invoke-direct {v0, p0, p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$2;-><init>(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    .line 344
    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 345
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 348
    new-instance v8, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;-><init>(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 410
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$4;

    invoke-direct {v0, p0, p1, v7}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$4;-><init>(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
