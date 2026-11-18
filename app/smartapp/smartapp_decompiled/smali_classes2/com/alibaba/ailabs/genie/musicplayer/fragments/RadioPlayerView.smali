.class public Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;
.source "RadioPlayerView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field private mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

.field private mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field private mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "RadioPlayerView"

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->TAG:Ljava/lang/String;

    .line 132
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$RadioPlayerView$VMqajYTc1RD8fn1BNaXqra4KRuQ;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$RadioPlayerView$VMqajYTc1RD8fn1BNaXqra4KRuQ;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 36
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mItemType:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    .line 38
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->radioPlay:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->radioLike:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->radioList:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->mediaBackId:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mBackCkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance p1, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;)Lpl/droidsonroids/gif/GifDrawable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    return-object p0
.end method

.method private likeOrUnlike()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCollect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->unlike()V

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->like()V

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->likeGifIv:Lpl/droidsonroids/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    if-nez v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->likeGifIv:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifDrawable;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifDrawable;->setLoopCount(I)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->reset()V

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;)V

    const-wide/16 v2, 0xf14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->unbind()V

    .line 50
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_1

    .line 54
    :try_start_0
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->stop()V

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioPlayerView"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->finish()V

    return-void
.end method

.method public getBinding()Landroid/databinding/ViewDataBinding;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    return-object v0
.end method

.method public getBusinessBtnRy()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$new$161$RadioPlayerView(Landroid/view/View;)V
    .locals 1

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 134
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->radio_like:I

    if-ne p1, v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->likeOrUnlike()V

    goto :goto_0

    .line 136
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->radio_play:I

    if-ne p1, v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->playOrPause()V

    goto :goto_0

    .line 138
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->radio_list:I

    if-ne p1, v0, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->openPlayList()V

    :cond_2
    :goto_0
    return-void
.end method

.method public refreshData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mItemType:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->radioName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->checkData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->moreIvId:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->moreIvId:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->moreIvId:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public refreshLike(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 105
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshLike(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->radioLike:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_like:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->radioLike:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_unlike:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public refreshPlayState(I)V
    .locals 2

    .line 115
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshPlayState(I)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    if-nez v0, :cond_0

    const-string p1, "RadioPlayerView"

    const-string v0, "mView is null, return"

    .line 117
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->radioPlay:Landroid/widget/ImageButton;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->radioPlay:Landroid/widget/ImageButton;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public showFindMoreIcon(Z)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->showFindMoreIcon(Z)V

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->moreIvId:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mRadiostationBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->moreIvId:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateExtra(Landroid/os/Bundle;)V
    .locals 2

    .line 175
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->updateExtra(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "isFavorite"

    .line 179
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->refreshLike(Z)V

    return-void
.end method
