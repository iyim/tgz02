.class public Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "ImageLoadFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/LayoutCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;,
        Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;,
        Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/widget/ImageView;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/LayoutCallback;"
    }
.end annotation


# static fields
.field private static final L_SCROLLING:I = 0x1

.field private static final L_SHOWING:I = 0x0

.field private static final S_DONE_FAIL:I = 0x3

.field private static final S_DONE_SUC:I = 0x2

.field private static final S_INIT:I = 0x0

.field private static final S_LOADING:I = 0x1

.field private static final S_LOAD_IMMEDIATE:I = 0x4


# instance fields
.field protected mAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mCacheKey4PlaceHolder:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEnableSizeInLayoutParams:Z

.field private mEnabledLoadOnFling:Z

.field private mErrorImageId:I

.field protected mFadeIn:Z

.field private mFailListener:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;

.field private mFinalUrlInspector:Lcom/taobao/uikit/extend/feature/view/TUrlImageView$FinalUrlInspector;

.field private mGlobalPhenixOptions:Lcom/taobao/uikit/extend/feature/features/PhenixOptions;

.field private mHostReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepBackgroundState:I

.field private mLastMaxViewSize:I

.field private mLastResTicket:Lcom/taobao/phenix/intf/PhenixTicket;

.field protected mLoadState:I

.field protected mLoadingUrl:Ljava/lang/String;

.field private mMainHandler:Landroid/os/Handler;

.field private mMemoryMissListener:Lcom/taobao/phenix/intf/event/IPhenixListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mNextPhenixOptions:Lcom/taobao/uikit/extend/feature/features/PhenixOptions;

.field private mNoRepeatOnError:Z

.field private mPlaceHoldForeground:Landroid/graphics/drawable/Drawable;

.field protected mPlaceHoldResourceId:I

.field private mPriorityModuleName:Ljava/lang/String;

.field private mRetryHandler:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;

.field private mScrollState:I

.field private mSkipAutoSize:Ljava/lang/Boolean;

.field private mStrategyConfig:Lcom/taobao/tao/image/ImageStrategyConfig;

.field private mSuccListener:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;

.field private mTicket:Lcom/taobao/phenix/intf/PhenixTicket;

.field private mUrl:Ljava/lang/String;

.field private mUserCalledSetImageUrl:Z

.field protected mUserFailListener:Lcom/taobao/phenix/intf/event/IPhenixListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/FailPhenixEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserSuccListener:Lcom/taobao/phenix/intf/event/IPhenixListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/SuccPhenixEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mWhenNullClearImg:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mNoRepeatOnError:Z

    const/4 v1, 0x0

    .line 87
    iput v1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    .line 90
    iput v1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mScrollState:I

    const-string v2, ""

    .line 91
    iput-object v2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadingUrl:Ljava/lang/String;

    .line 92
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mWhenNullClearImg:Z

    .line 94
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mEnabledLoadOnFling:Z

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mMainHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;-><init>(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mSuccListener:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;

    .line 104
    new-instance v0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;-><init>(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mFailListener:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;

    .line 105
    new-instance v0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;-><init>(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mRetryHandler:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;

    .line 106
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUserCalledSetImageUrl:Z

    .line 119
    new-instance v0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$1;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$1;-><init>(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mMemoryMissListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mWhenNullClearImg:Z

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->fillImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;Z)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->loadImageIfNecessary(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mNoRepeatOnError:Z

    return p1
.end method

.method static synthetic access$500(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->isViewBitmapDifferentWith(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mKeepBackgroundState:I

    return p0
.end method

.method private fillImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLastResTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {v0}, Lcom/taobao/phenix/intf/PhenixTicket;->cancel()Z

    .line 522
    iput-object v1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLastResTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    :cond_1
    if-eqz p2, :cond_3

    .line 525
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    iget p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mKeepBackgroundState:I

    if-ltz p2, :cond_2

    if-nez p2, :cond_8

    iget p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mPlaceHoldResourceId:I

    if-eqz p2, :cond_8

    .line 528
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 531
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    iget p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mErrorImageId:I

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mPlaceHoldResourceId:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->placeBgResImage(I)V

    goto :goto_1

    :cond_5
    if-nez p4, :cond_6

    .line 533
    invoke-direct {p0, p1, v1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->isViewDrawableSameWith(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mPlaceHoldForeground:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_7

    .line 535
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    .line 537
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    iget p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mPlaceHoldResourceId:I

    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->placeBgResImage(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private getPriorityModuleName()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mNextPhenixOptions:Lcom/taobao/uikit/extend/feature/features/PhenixOptions;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, v0, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->priorityModuleName:Ljava/lang/String;

    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mPriorityModuleName:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mGlobalPhenixOptions:Lcom/taobao/uikit/extend/feature/features/PhenixOptions;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, v0, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->priorityModuleName:Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private isViewBitmapDifferentWith(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 502
    instance-of v0, p1, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    if-eqz v0, :cond_0

    .line 503
    nop

    nop

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->isViewBitmapDifferentWith(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 506
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isViewDrawableSameWith(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 494
    instance-of v0, p1, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    if-eqz v0, :cond_0

    .line 495
    nop

    nop

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->isDrawableSameWith(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 497
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadImageIfNecessary(Z)Z
    .locals 10

    .line 366
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->getHost()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 371
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 372
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 377
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 378
    iget-boolean v6, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mEnableSizeInLayoutParams:Z

    if-eqz v6, :cond_1

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v6, :cond_1

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v6, :cond_1

    .line 379
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 380
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 381
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLastMaxViewSize:I

    goto :goto_0

    .line 383
    :cond_1
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_2

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v7, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    return v1

    .line 392
    :cond_3
    iget-object v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 393
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    if-eqz p1, :cond_4

    .line 394
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/PhenixTicket;->cancel()Z

    :cond_4
    const/4 p1, 0x0

    .line 397
    iget-boolean v2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUserCalledSetImageUrl:Z

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->fillImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    return v1

    .line 402
    :cond_5
    iget-object v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    if-eqz v4, :cond_6

    iget-object v6, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/taobao/phenix/intf/PhenixTicket;->theSame(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 403
    iget-object v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    invoke-virtual {v4}, Lcom/taobao/phenix/intf/PhenixTicket;->cancel()Z

    .line 406
    :cond_6
    iget-boolean v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mNoRepeatOnError:Z

    if-eqz v4, :cond_7

    return v1

    .line 410
    :cond_7
    iget v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    if-eqz v4, :cond_8

    return v1

    .line 415
    :cond_8
    iget v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mScrollState:I

    if-ne v4, v5, :cond_a

    .line 416
    iget-boolean v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mEnabledLoadOnFling:Z

    if-nez v4, :cond_9

    return v1

    :cond_9
    const/4 v4, 0x1

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    .line 422
    :goto_2
    iget-object v6, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    .line 424
    iget-object v7, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mSkipAutoSize:Ljava/lang/Boolean;

    if-nez v7, :cond_b

    invoke-static {}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->isAutoSizeSkippedGlobally()Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    iget-object v7, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mSkipAutoSize:Ljava/lang/Boolean;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_d

    .line 425
    :cond_c
    iget-object v6, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mStrategyConfig:Lcom/taobao/tao/image/ImageStrategyConfig;

    invoke-static {v6, v7, v8, v9}, Lcom/taobao/tao/util/ImageStrategyDecider;->decideUrl(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 427
    :cond_d
    iget-object v7, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mFinalUrlInspector:Lcom/taobao/uikit/extend/feature/view/TUrlImageView$FinalUrlInspector;

    if-eqz v7, :cond_e

    .line 428
    invoke-interface {v7, v6, v2, v3}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView$FinalUrlInspector;->inspectFinalUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 430
    :cond_e
    invoke-static {}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->getGlobalFinalUrlInspector()Lcom/taobao/uikit/extend/feature/view/TUrlImageView$FinalUrlInspector;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 431
    invoke-interface {v7, v6, v2, v3}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView$FinalUrlInspector;->inspectFinalUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 434
    :cond_f
    iput-object v6, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadingUrl:Ljava/lang/String;

    .line 435
    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mSuccListener:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;

    invoke-virtual {v2, p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->setIsInLayoutPass(Z)V

    const/4 p1, 0x4

    if-eqz v4, :cond_10

    const/4 v2, 0x4

    goto :goto_3

    :cond_10
    const/4 v2, 0x1

    .line 436
    :goto_3
    iput v2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    .line 437
    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mNextPhenixOptions:Lcom/taobao/uikit/extend/feature/features/PhenixOptions;

    if-eqz v2, :cond_11

    goto :goto_4

    :cond_11
    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mGlobalPhenixOptions:Lcom/taobao/uikit/extend/feature/features/PhenixOptions;

    .line 438
    :goto_4
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v3

    iget-object v7, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/taobao/phenix/intf/Phenix;->with(Landroid/content/Context;)Lcom/taobao/phenix/intf/Phenix;

    move-result-object v3

    .line 439
    invoke-direct {p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->getPriorityModuleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Lcom/taobao/phenix/intf/Phenix;->load(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v3

    .line 440
    invoke-virtual {v3, v5}, Lcom/taobao/phenix/intf/PhenixCreator;->releasableDrawable(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v3

    iget-object v7, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mCacheKey4PlaceHolder:Ljava/lang/String;

    .line 441
    invoke-virtual {v3, v7}, Lcom/taobao/phenix/intf/PhenixCreator;->secondary(Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v3

    .line 442
    invoke-virtual {v3, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->memOnly(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v3

    .line 443
    invoke-virtual {v3, v0}, Lcom/taobao/phenix/intf/PhenixCreator;->limitSize(Landroid/view/View;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mSuccListener:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;

    .line 444
    invoke-virtual {v0, v3}, Lcom/taobao/phenix/intf/PhenixCreator;->succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mMemoryMissListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    .line 445
    invoke-virtual {v0, v3}, Lcom/taobao/phenix/intf/PhenixCreator;->memCacheMissListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mFailListener:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;

    .line 446
    invoke-virtual {v0, v3}, Lcom/taobao/phenix/intf/PhenixCreator;->failListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v0

    .line 447
    iget-object v3, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mSuccListener:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;

    iput-object v0, v3, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->mCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    .line 448
    iget-object v3, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mFailListener:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;

    iput-object v0, v3, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->mCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    .line 450
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 451
    iget-object v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    const-string v7, "oriUrl"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "time"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-static {}, Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;->instance()Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;

    move-result-object v4

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->id()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6, v3}, Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;->onRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v2, :cond_13

    .line 457
    invoke-virtual {v2, v5}, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->isOpened(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/taobao/phenix/intf/PhenixCreator;->preloadWithSmall(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v3

    const/4 v4, 0x2

    .line 458
    invoke-virtual {v2, v4}, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->isOpened(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->scaleFromLarge(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v3

    iget-object v4, v2, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->bitmapProcessors:[Lcom/taobao/phenix/bitmap/BitmapProcessor;

    .line 459
    invoke-virtual {v3, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->bitmapProcessors([Lcom/taobao/phenix/bitmap/BitmapProcessor;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v3

    iget v4, v2, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->thumbnailType:I

    const/16 v5, 0x10

    .line 460
    invoke-virtual {v2, v5}, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->isOpened(I)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/taobao/phenix/intf/PhenixCreator;->asThumbnail(IZ)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v3

    iget v4, v2, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->diskCachePriority:I

    .line 461
    invoke-virtual {v3, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->diskCachePriority(I)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v3

    iget v4, v2, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->schedulePriority:I

    .line 462
    invoke-virtual {v3, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->schedulePriority(I)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v3

    iget v4, v2, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->memoryCachePriority:I

    .line 463
    invoke-virtual {v3, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->memoryCachePriority(I)Lcom/taobao/phenix/intf/PhenixCreator;

    .line 465
    invoke-virtual {v2, p1}, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->isOpened(I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 466
    invoke-virtual {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->skipCache()Lcom/taobao/phenix/intf/PhenixCreator;

    :cond_12
    const/16 p1, 0x8

    .line 468
    invoke-virtual {v2, p1}, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->isOpened(I)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 469
    invoke-virtual {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->onlyCache()Lcom/taobao/phenix/intf/PhenixCreator;

    .line 474
    :cond_13
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 475
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mRetryHandler:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;

    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;->setRetryUrl(Ljava/lang/String;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->retryHandler(Lcom/taobao/phenix/intf/event/IRetryHandlerOnFailure;)Lcom/taobao/phenix/intf/PhenixCreator;

    .line 476
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    const-string v2, "origin_url"

    invoke-virtual {v0, v2, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    .line 479
    :cond_14
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mStrategyConfig:Lcom/taobao/tao/image/ImageStrategyConfig;

    if-eqz p1, :cond_16

    .line 480
    invoke-virtual {p1}, Lcom/taobao/tao/image/ImageStrategyConfig;->getBizIdStr()Ljava/lang/String;

    move-result-object p1

    .line 482
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mStrategyConfig:Lcom/taobao/tao/image/ImageStrategyConfig;

    invoke-virtual {p1}, Lcom/taobao/tao/image/ImageStrategyConfig;->getBizId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_15
    const-string v2, "bundle_biz_code"

    .line 484
    invoke-virtual {v0, v2, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    .line 487
    :cond_16
    invoke-virtual {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->fetch()Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    .line 488
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/taobao/phenix/intf/PhenixTicket;->setUrl(Ljava/lang/String;)V

    return v1
.end method

.method private placeBgResImage(I)V
    .locals 2

    .line 543
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->getHost()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/taobao/tcommon/core/RuntimeUtil;->isPictureResource(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 549
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void

    .line 553
    :cond_1
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/taobao/phenix/intf/Phenix;->with(Landroid/content/Context;)Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-static {p1}, Lcom/taobao/phenix/request/SchemeInfo;->wrapRes(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/Phenix;->load(Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/taobao/phenix/intf/PhenixCreator;->schedulePriority(I)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    new-instance v0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$3;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$3;-><init>(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)V

    invoke-virtual {p1, v0}, Lcom/taobao/phenix/intf/PhenixCreator;->succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    .line 564
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/PhenixCreator;->fetch()Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLastResTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public afterOnLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 201
    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 202
    iget p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLastMaxViewSize:I

    const/4 p3, 0x1

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    const/16 p4, 0x64

    if-lt p2, p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 203
    :goto_0
    iput p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLastMaxViewSize:I

    if-nez p2, :cond_1

    .line 204
    iget p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->resetState()V

    .line 208
    :cond_2
    invoke-direct {p0, p3}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->loadImageIfNecessary(Z)Z

    :cond_3
    return-void
.end method

.method public beforeOnLayout(ZIIII)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->constructor(Landroid/content/Context;Landroid/util/AttributeSet;I[Z)V

    return-void
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I[Z)V
    .locals 2

    if-eqz p2, :cond_2

    .line 177
    sget-object v0, Lcom/taobao/uikit/image/R$styleable;->ImageLoadFeature:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 179
    sget p2, Lcom/taobao/uikit/image/R$styleable;->ImageLoadFeature_uik_fade_in:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mFadeIn:Z

    .line 180
    sget p2, Lcom/taobao/uikit/image/R$styleable;->ImageLoadFeature_uik_skip_auto_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 181
    sget p2, Lcom/taobao/uikit/image/R$styleable;->ImageLoadFeature_uik_skip_auto_size:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mSkipAutoSize:Ljava/lang/Boolean;

    .line 183
    :cond_0
    sget p2, Lcom/taobao/uikit/image/R$styleable;->ImageLoadFeature_uik_when_null_clear_img:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mWhenNullClearImg:Z

    .line 184
    sget p2, Lcom/taobao/uikit/image/R$styleable;->ImageLoadFeature_uik_place_hold_background:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mPlaceHoldResourceId:I

    .line 185
    sget p2, Lcom/taobao/uikit/image/R$styleable;->ImageLoadFeature_uik_error_background:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mErrorImageId:I

    .line 186
    sget p2, Lcom/taobao/uikit/image/R$styleable;->ImageLoadFeature_uik_place_hold_foreground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mPlaceHoldForeground:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_1

    .line 188
    sget p2, Lcom/taobao/uikit/image/R$styleable;->ImageLoadFeature_uik_auto_release_image:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    aput-boolean p2, p4, v1

    .line 190
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method public enableLoadOnFling(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mEnabledLoadOnFling:Z

    return-void
.end method

.method public enableSizeInLayoutParams(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mEnableSizeInLayoutParams:Z

    return-void
.end method

.method public failListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/FailPhenixEvent;",
            ">;)",
            "Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUserFailListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object p0
.end method

.method public bridge synthetic getHost()Landroid/view/View;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->getHost()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Landroid/widget/ImageView;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mHostReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingUrl()Ljava/lang/String;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isFadeIn()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mFadeIn:Z

    return v0
.end method

.method public keepBackgroundOnForegroundUpdate(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 310
    :goto_0
    iput p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mKeepBackgroundState:I

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 340
    iput v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mScrollState:I

    return-void
.end method

.method public reload(Z)V
    .locals 6

    .line 238
    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mCacheKey4PlaceHolder:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mNextPhenixOptions:Lcom/taobao/uikit/extend/feature/features/PhenixOptions;

    const/4 v4, 0x1

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLcom/taobao/uikit/extend/feature/features/PhenixOptions;)V

    return-void
.end method

.method public resetState()V
    .locals 1

    const/4 v0, 0x0

    .line 246
    iput v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    return-void
.end method

.method public resume()V
    .locals 3

    .line 344
    iget v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mScrollState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 345
    iput v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mScrollState:I

    .line 352
    iget v1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->resetState()V

    .line 354
    invoke-direct {p0, v0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->loadImageIfNecessary(Z)Z

    :cond_1
    return-void
.end method

.method public retrieveImageData()Lcom/taobao/phenix/entity/ResponseData;
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadingUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 306
    :cond_0
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v1

    invoke-direct {p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->getPriorityModuleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/taobao/phenix/intf/Phenix;->fetchDiskCache(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/taobao/phenix/entity/ResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setErrorImageResId(I)V
    .locals 0

    .line 336
    iput p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mErrorImageId:I

    return-void
.end method

.method public setFadeIn(Z)V
    .locals 0

    .line 572
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mFadeIn:Z

    return-void
.end method

.method public setFinalUrlInspector(Lcom/taobao/uikit/extend/feature/view/TUrlImageView$FinalUrlInspector;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mFinalUrlInspector:Lcom/taobao/uikit/extend/feature/view/TUrlImageView$FinalUrlInspector;

    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .line 66
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->setHost(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ImageView;)V
    .locals 1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mHostReference:Ljava/lang/ref/WeakReference;

    .line 146
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUserSuccListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    .line 147
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUserFailListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    .line 148
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/PhenixTicket;->cancel()Z

    :cond_0
    return-void

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mHostReference:Ljava/lang/ref/WeakReference;

    .line 155
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mContext:Landroid/content/Context;

    .line 156
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 157
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->loadImageIfNecessary(Z)Z

    :cond_2
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 242
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLcom/taobao/uikit/extend/feature/features/PhenixOptions;)V

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLcom/taobao/uikit/extend/feature/features/PhenixOptions;)V
    .locals 2

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUserCalledSetImageUrl:Z

    if-nez p4, :cond_0

    .line 253
    iget p4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    if-eqz p4, :cond_0

    const/4 v1, 0x3

    if-eq p4, v1, :cond_0

    iget-object p4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    .line 254
    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mCacheKey4PlaceHolder:Ljava/lang/String;

    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mNextPhenixOptions:Lcom/taobao/uikit/extend/feature/features/PhenixOptions;

    .line 255
    invoke-static {p4, p5}, Lcom/taobao/uikit/extend/feature/features/PhenixOptions;->isSame(Lcom/taobao/uikit/extend/feature/features/PhenixOptions;Lcom/taobao/uikit/extend/feature/features/PhenixOptions;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 261
    :cond_0
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    .line 262
    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mCacheKey4PlaceHolder:Ljava/lang/String;

    const/4 p1, 0x0

    .line 263
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mNoRepeatOnError:Z

    .line 264
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->resetState()V

    .line 265
    iput-object p5, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mNextPhenixOptions:Lcom/taobao/uikit/extend/feature/features/PhenixOptions;

    .line 267
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->getHost()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 270
    iget-object p3, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUrl:Ljava/lang/String;

    if-nez p3, :cond_1

    .line 271
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object p3

    iget-object p4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    invoke-virtual {p3, p4}, Lcom/taobao/phenix/intf/Phenix;->cancel(Lcom/taobao/phenix/intf/PhenixTicket;)V

    const/4 p3, 0x0

    .line 272
    invoke-direct {p0, p2, p3, p1, v0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->fillImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$2;

    invoke-direct {p2, p0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$2;-><init>(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 282
    :cond_2
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->loadImageIfNecessary(Z)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public setPhenixOptions(Lcom/taobao/uikit/extend/feature/features/PhenixOptions;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mGlobalPhenixOptions:Lcom/taobao/uikit/extend/feature/features/PhenixOptions;

    return-void
.end method

.method public setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mPlaceHoldForeground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPlaceHoldImageResId(I)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mPlaceHoldResourceId:I

    return-void
.end method

.method public setPriorityModuleName(Ljava/lang/String;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mPriorityModuleName:Ljava/lang/String;

    return-void
.end method

.method public setStrategyConfig(Ljava/lang/Object;)V
    .locals 1

    .line 136
    instance-of v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig;

    if-eqz v0, :cond_0

    .line 137
    nop

    nop

    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mStrategyConfig:Lcom/taobao/tao/image/ImageStrategyConfig;

    :cond_0
    return-void
.end method

.method public setWhenNullClearImg(Z)V
    .locals 0

    .line 576
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mWhenNullClearImg:Z

    return-void
.end method

.method public skipAutoSize(Z)Z
    .locals 1

    .line 216
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mSkipAutoSize:Ljava/lang/Boolean;

    return p1
.end method

.method public succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/SuccPhenixEvent;",
            ">;)",
            "Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUserSuccListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object p0
.end method
