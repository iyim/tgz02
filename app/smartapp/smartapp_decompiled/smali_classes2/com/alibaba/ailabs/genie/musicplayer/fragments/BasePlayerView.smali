.class public abstract Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;
.super Ljava/lang/Object;
.source "BasePlayerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BasePlayerView"

.field protected static mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;


# instance fields
.field protected mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field protected mBackCkListener:Landroid/view/View$OnClickListener;

.field protected mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

.field protected mContext:Landroid/content/Context;

.field protected mController:Landroid/support/v4/media/session/MediaControllerCompat;

.field protected mDuration:J

.field protected mItemType:Ljava/lang/String;

.field protected mOptions:Lcom/bumptech/glide/request/RequestOptions;

.field protected mPlayModel:I

.field protected mPlayState:I

.field protected mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mPlayModel:I

    .line 359
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$BasePlayerView$fsB_XBPbB3Bm7T4jHBT4o1IWIMo;->INSTANCE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$BasePlayerView$fsB_XBPbB3Bm7T4jHBT4o1IWIMo;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mBackCkListener:Landroid/view/View$OnClickListener;

    .line 57
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mItemType:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    .line 59
    new-instance p1, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mItemType:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isChildResource(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 66
    :goto_0
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_album_img:I

    .line 67
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_album_img:I

    .line 68
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideRoundTransformNew;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideRoundTransformNew;-><init>(FI)V

    .line 69
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 70
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$anim;->alpha:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AlphaAnimation;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    return-void
.end method

.method static synthetic lambda$new$50(Landroid/view/View;)V
    .locals 0

    .line 359
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->clearAllActivity()V

    return-void
.end method


# virtual methods
.method protected BusinessItemClick(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;)V
    .locals 4

    .line 246
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getBusinessType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebapp(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;I)V

    .line 248
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_account:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_account:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    const-string v3, "vip_buy"

    invoke-direct {p1, v0, v1, v3, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getBusinessType()I

    move-result v0

    const-string v1, "item_buy"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 253
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-static {p1, v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebapp(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;I)V

    .line 254
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_account:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_account:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v2, v1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getBusinessType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 259
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-static {p1, v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebapp(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;I)V

    .line 260
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_account:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_account:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v2, v1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getBusinessType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 265
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebapp(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;I)V

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 268
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withSource(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getRawId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withRawId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportClickEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    :cond_4
    return-void
.end method

.method protected checkController()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    const/4 v0, 0x0

    .line 95
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    if-eqz v1, :cond_0

    .line 96
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->clearMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BasePlayerView"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 104
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v1, :cond_2

    .line 107
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    if-eqz v1, :cond_3

    .line 110
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_4

    .line 113
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 116
    :cond_4
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    .line 117
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mBackCkListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public abstract getBinding()Landroid/databinding/ViewDataBinding;
.end method

.method public abstract getBusinessBtnRy()Landroid/support/v7/widget/RecyclerView;
.end method

.method public getPlayState()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mPlayState:I

    return v0
.end method

.method public abstract getSeekBar()Landroid/widget/SeekBar;
.end method

.method protected isTouchInThumb(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 6

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BasePlayerView"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v1

    .line 348
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v4

    .line 349
    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v1

    add-int/2addr v5, v4

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "left:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", top:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",bottom:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v5

    int-to-float v2, v5

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 352
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v3
.end method

.method public synthetic lambda$showBuyBtns$49$BasePlayerView(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;)V
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->BusinessItemClick(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;)V

    return-void
.end method

.method public like()V
    .locals 3

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->checkController()V

    const-string v0, "BasePlayerView"

    const-string v1, "like click"

    .line 312
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "like"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public loadLrcEntryList(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public next()V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->checkController()V

    const-string v0, "BasePlayerView"

    const-string v1, "next click"

    .line 276
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    :cond_0
    return-void
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActionUp(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onProgressChanged(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public openPlayList()V
    .locals 3

    .line 328
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mItemType:Ljava/lang/String;

    const-string v2, "itemType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPageNum()I

    move-result v1

    const-string v2, "pageNum"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public playOrPause()V
    .locals 3

    .line 291
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->checkController()V

    .line 292
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    const-string v1, "BasePlayerView"

    if-nez v0, :cond_0

    const-string v0, "mController is null"

    .line 293
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCanPlay()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "playOrPause, can not play"

    .line 297
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playOrPause state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, "clickPause"

    .line 302
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/StatisticLog;->sendStatCheckListLog(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    goto :goto_0

    :cond_2
    const-string v0, "clickPlay"

    .line 305
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/StatisticLog;->sendStatCheckListLog(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    :goto_0
    return-void
.end method

.method public previous()V
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->checkController()V

    const-string v0, "BasePlayerView"

    const-string v1, "previous click"

    .line 284
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    :cond_0
    return-void
.end method

.method public refreshData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 2

    .line 167
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    .line 168
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCollect()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshLike(Z)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshPlayState(I)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getToast()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getToast()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->showToastView(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public refreshLike(Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setCollect(Z)V

    :cond_0
    return-void
.end method

.method public refreshPlayModel(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mPlayModel:I

    return-void
.end method

.method public refreshPlayState(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mPlayState:I

    return-void
.end method

.method public setController(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method

.method public setViewModel(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    return-void
.end method

.method protected showBusinessOther(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showBuyBtns()V
    .locals 7

    .line 191
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getBusinessBtnRy()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const-string v1, "BasePlayerView"

    if-nez v0, :cond_0

    const-string v0, "buyBtn is null, return"

    .line 192
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 201
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BusinessButton size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getBusinessBtnRy()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->showBusinessOther(I)V

    .line 205
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getBusinessBtnRy()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 207
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getBusinessBtnRy()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBusinessBtnRy() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getBusinessBtnRy()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , visible = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getBusinessBtnRy()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$BasePlayerView$QaVrtTGBAjvArwwFbM5o-ubpsgQ;

    invoke-direct {v5, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$BasePlayerView$QaVrtTGBAjvArwwFbM5o-ubpsgQ;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;)V

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$BtnClick;)V

    .line 215
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getBusinessBtnRy()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 216
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->notifyDataSetChanged()V

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_5

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getBusinessType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 221
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_account:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_account:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    const-string v6, "vip_buy"

    invoke-direct {v0, v1, v4, v6, v5}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 225
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withSource(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getRawId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withRawId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportExposeEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    goto :goto_1

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getBusinessType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    .line 227
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getBusinessType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 228
    :cond_3
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_account:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_account:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContext:Landroid/content/Context;

    const-string v6, "item_buy"

    invoke-direct {v0, v1, v4, v6, v5}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 232
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withSource(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getRawId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withRawId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportExposeEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_2
    const-string v0, "BusinessButton is null, return"

    .line 196
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->showBusinessOther(I)V

    .line 198
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getBusinessBtnRy()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public showFindMoreIcon(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public unlike()V
    .locals 3

    .line 319
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->checkController()V

    const-string v0, "BasePlayerView"

    const-string v1, "unlike click"

    .line 320
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "unlike"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public updateDuration(J)V
    .locals 0

    .line 148
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mDuration:J

    return-void
.end method

.method public updateExtra(Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateSpeed(F)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v0, :cond_0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setSpeedValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateTime(JJ)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
