.class public Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;
.source "MusicPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$OnSeekBarChangeImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicPlayerView"

.field private static final TIME_LIMIT:I = 0xc


# instance fields
.field private albumBgId:Landroid/widget/ImageView;

.field private final animRunnable:Ljava/lang/Runnable;

.field private final fullLrcViewRunnable:Ljava/lang/Runnable;

.field private final likeAnimEndRunnable:Ljava/lang/Runnable;

.field private likeAnimIv:Landroid/widget/ImageView;

.field private final likeAnimStartRunnable:Ljava/lang/Runnable;

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mCircleOption:Lcom/bumptech/glide/request/RequestOptions;

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field private mFullViewBg:Landroid/widget/ImageView;

.field private mLike:Landroid/widget/ImageView;

.field private mLikeAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private mLogoOption:Lcom/bumptech/glide/request/RequestOptions;

.field private mLrcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mLrcViewFull:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

.field private mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

.field private mSeekBarIsTouching:Z

.field private qualityPopup:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;

.field private seekBarTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "NewApi"
        }
    .end annotation
.end field

.field private timer:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "NewApi"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->timer:I

    .line 185
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->animRunnable:Ljava/lang/Runnable;

    .line 194
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$2;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->likeAnimStartRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$3;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->likeAnimEndRunnable:Ljava/lang/Runnable;

    .line 692
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$LIqCfu2Ua-Cjjzx14tmPv_B5ggU;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$LIqCfu2Ua-Cjjzx14tmPv_B5ggU;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 951
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$5;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$5;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->fullLrcViewRunnable:Ljava/lang/Runnable;

    .line 971
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->seekBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 87
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    .line 88
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->preIbId:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->nextIbId:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playListIbId:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->soundQuality:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mBackCkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string p3, "fonts/AlibabaSans102-Rg.ttf"

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    .line 99
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->totalTimeTvId:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playedTimeTvId:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isChildResource(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playedTimeTvId:Landroid/widget/TextView;

    const-string p3, "#5E91FE"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playedTimeTvId:Landroid/widget/TextView;

    const-string p3, "#FF1F77"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    :goto_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    const-string p3, "children_song"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showChildView()V

    goto :goto_1

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showAdult()V

    .line 111
    :goto_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    const/4 p3, 0x1

    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$g_ZKc8dqMRJhug3MncthukwBvCM;->INSTANCE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$g_ZKc8dqMRJhug3MncthukwBvCM;

    invoke-virtual {p2, p3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setDraggable(ZLcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnPlayClickListener;)V

    .line 112
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$wnovAuNJ-8p2gj3m-CDTw4pbWjU;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$wnovAuNJ-8p2gj3m-CDTw4pbWjU;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setLineClickListener(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnLrcLineClickListener;)V

    .line 118
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playerViewId:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p2, p1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 119
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->lrcFull:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcViewFull:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    .line 120
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcViewFull:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->fullViewBgId:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mFullViewBg:Landroid/widget/ImageView;

    .line 122
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->noLrcTvFull:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mFullViewBg:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->albumBgId:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->albumBgId:Landroid/widget/ImageView;

    .line 125
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->initAnim()V

    .line 126
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->likeIvId:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLike:Landroid/widget/ImageView;

    .line 127
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLike:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 129
    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->fullLrcViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->likeIvAnim:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->likeAnimIv:Landroid/widget/ImageView;

    .line 133
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 134
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$OnSeekBarChangeImpl;

    invoke-direct {p2, p0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$OnSeekBarChangeImpl;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->seekBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$l2gK4JWmJj3UeQAly7veDrAEuhA;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$l2gK4JWmJj3UeQAly7veDrAEuhA;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcViewFull:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->likeAnimIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLikeAnim:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLikeAnim:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Ljava/lang/Runnable;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->likeAnimEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mCircleOption:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Ljava/lang/Runnable;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->fullLrcViewRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->timer:I

    return p0
.end method

.method static synthetic access$702(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->timer:I

    return p1
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showFullView()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$902(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mSeekBarIsTouching:Z

    return p1
.end method

.method private changeSoundQuality(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;)V
    .locals 4

    .line 766
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->checkController()V

    .line 767
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 768
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 769
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 770
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;->getQualityCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "qualityCode"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "soundQuality"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change Sound Quality click, code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;->getQualityCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MusicPlayerView"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    const-string v1, "selectQuality"

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private getBrandName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 568
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2d018f25

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x95c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x96c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9b7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa1c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "QM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "NE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    const-string v0, "KW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "KG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "migumusic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_a

    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    const-string p1, ""

    goto :goto_2

    :cond_6
    const-string p1, "\u7f51\u6613\u4e91\u97f3\u4e50"

    goto :goto_2

    :cond_7
    const-string p1, "\u54aa\u5495\u97f3\u4e50"

    goto :goto_2

    :cond_8
    const-string p1, "\u9177\u6211\u97f3\u4e50"

    goto :goto_2

    :cond_9
    const-string p1, "\u9177\u72d7\u97f3\u4e50"

    goto :goto_2

    :cond_a
    const-string p1, "QQ\u97f3\u4e50"

    :goto_2
    return-object p1
.end method

.method private initAnim()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->albumBgId:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationX"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x42080000    # 34.0f
    .end array-data
.end method

.method static synthetic lambda$new$162(J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private loadAlbum(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;Landroid/widget/ImageView;)V
    .locals 4

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "albumWid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerView"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->circle_album_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "albumWid--dimen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mCircleOption:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideRoundTransformNew;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideRoundTransformNew;-><init>(FI)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 226
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mCircleOption:Lcom/bumptech/glide/request/RequestOptions;

    :cond_0
    if-eqz p1, :cond_2

    .line 229
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->getLarge()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->getImg()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 234
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mCircleOption:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 250
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 253
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    .line 254
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_album_img:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mCircleOption:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_3
    :goto_0
    return-void
.end method

.method private setImgTagLyVisible()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->soundQuality:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->songVipStatus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->songTagImage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->songTagImage:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showAdult()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 928
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->preIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_previous:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 929
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_pause:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 930
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->nextIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_next:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 931
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_unlike:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 932
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_order:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 933
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playListIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_play_list:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 934
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_thumb:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 935
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 936
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v2, v4}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 937
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->changpanId:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 938
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    const-string v2, "#FE2161"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setCurrentColor(I)V

    .line 939
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_progress:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 940
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_more_more:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 941
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->albumSeekBgId:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->album_small_bg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 942
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_back_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 943
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->ripple_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 944
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 945
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    const v2, 0x42133333    # 36.8f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 946
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 947
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 948
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private showChildView()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 902
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->preIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_previous_child:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 903
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_pause_child:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 904
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->nextIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_next_child:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 905
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_unlike_child:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 906
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_odrer_child:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 907
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playListIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_play_list_child:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 908
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_thumb_child:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 909
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small_child:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 910
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v2, v4}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 911
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->changpanId:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 912
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    const-string v4, "#6A95EB"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setCurrentColor(I)V

    .line 913
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_progress_child:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 914
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_more_more_child:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 915
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->albumSeekBgId:Landroid/widget/ImageView;

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->album_small_child_bg:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 916
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_back_bg_child:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 917
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 918
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 919
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42f40000    # 122.0f

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 920
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 921
    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 922
    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private showFullView()V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playerViewId:Landroid/support/constraint/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->qualityPopup:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->hidePopup()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcViewFull:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->noLrcTvFull:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->writerTvId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->writerFromLine:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 169
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcViewFull:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->noLrcTvFull:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->writerTvId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->writerFromLine:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :goto_1
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 180
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->animRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private showNoLrc()V
    .locals 4

    .line 540
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->noLrcTvFull:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->writerTvId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showText(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 541
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcTxtId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->textWriterId:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showText(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 542
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->noLrcTvFull:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->writerTvId:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->writerFromLine:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->lrcFull:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcMengIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCanPlay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcTxtId:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->textWriterId:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->writeFromId:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->noLrcNotice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcTxtId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->textWriterId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->writeFromId:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->bottomBtnRy:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->noLrcNotice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showSmallLrc()V
    .locals 6

    .line 778
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playerViewId:Landroid/support/constraint/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playerViewId:Landroid/support/constraint/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->setAlpha(F)V

    .line 781
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playerViewId:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 782
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcMengIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcTxtId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->textWriterId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->writeFromId:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->noLrcNotice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcMengIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCanPlay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcTxtId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 794
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->textWriterId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->writeFromId:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->noLrcNotice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcTxtId:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->textWriterId:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->writeFromId:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->bottomBtnRy:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->noLrcNotice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 806
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 807
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 808
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->albumBgId:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_3
    return-void
.end method

.method private showSoundQualityList()V
    .locals 5

    const-string v0, "MusicPlayerView"

    const-string v1, "show Sound Quality click"

    .line 758
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSoundQuality()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    .line 760
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSoundQualityList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$v9aDOciBwcf78HrBUfflqaoJlNI;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$v9aDOciBwcf78HrBUfflqaoJlNI;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->qualityPopup:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;

    .line 761
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->qualityPopup:Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->backgroundIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup;->showPopup(Landroid/view/View;)V

    return-void
.end method

.method private showText(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getLyricbackGround()Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 655
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getLyricbackGroundAuhor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 658
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    const-string v0, "MusicPlayerView"

    const-string v1, "---finish---"

    .line 261
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 264
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcList:Ljava/util/List;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLike:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 267
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLike:Landroid/widget/ImageView;

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->albumBgId:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 271
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->albumBgId:Landroid/widget/ImageView;

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->likeAnimIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 275
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->likeAnimIv:Landroid/widget/ImageView;

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLikeAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_4

    .line 279
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLikeAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mFullViewBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 283
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mFullViewBg:Landroid/widget/ImageView;

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_6

    .line 287
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 288
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 290
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLikeAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_7

    .line 291
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLikeAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 293
    :cond_7
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    if-eqz v0, :cond_8

    .line 295
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->unbind()V

    .line 296
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    .line 298
    :cond_8
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 299
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcViewFull:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    .line 300
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->finish()V

    return-void
.end method

.method public getBinding()Landroid/databinding/ViewDataBinding;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    return-object v0
.end method

.method public getBusinessBtnRy()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->bottomBtnRy:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public synthetic lambda$new$163$MusicPlayerView(J)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->checkController()V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$164$MusicPlayerView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$new$166$MusicPlayerView(Landroid/view/View;)V
    .locals 3

    .line 693
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 696
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 697
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->preIbId:I

    if-ne p1, v0, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->previous()V

    goto/16 :goto_0

    .line 699
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->nextIbId:I

    if-ne p1, v0, :cond_2

    .line 700
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->next()V

    goto/16 :goto_0

    .line 701
    :cond_2
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->playListIbId:I

    if-ne p1, v0, :cond_3

    .line 702
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->openPlayList()V

    goto/16 :goto_0

    .line 703
    :cond_3
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->lrcFullViewId:I

    if-ne p1, v0, :cond_4

    .line 704
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showSmallLrc()V

    goto/16 :goto_0

    .line 705
    :cond_4
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->fullViewBgId:I

    if-ne p1, v0, :cond_5

    .line 706
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showSmallLrc()V

    goto/16 :goto_0

    .line 707
    :cond_5
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->noLrcTvFull:I

    if-ne p1, v0, :cond_6

    .line 708
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showSmallLrc()V

    goto/16 :goto_0

    .line 709
    :cond_6
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->lrcFull:I

    if-ne p1, v0, :cond_7

    .line 710
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showSmallLrc()V

    goto/16 :goto_0

    .line 711
    :cond_7
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->playIbIv:I

    if-ne p1, v0, :cond_9

    .line 712
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 713
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->playOrPause()V

    goto/16 :goto_0

    .line 715
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getToast()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 716
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getToast()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->showToastView(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 719
    :cond_9
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->playListIbId:I

    if-ne p1, v0, :cond_a

    .line 720
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->openPlayList()V

    goto/16 :goto_0

    .line 721
    :cond_a
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->likeIbId:I

    if-ne p1, v0, :cond_c

    .line 723
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCollect()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 724
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->unlike()V

    goto :goto_0

    .line 726
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->like()V

    goto :goto_0

    .line 728
    :cond_c
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->likeIvId:I

    if-ne p1, v0, :cond_e

    .line 730
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCollect()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 731
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->unlike()V

    goto :goto_0

    .line 733
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->like()V

    .line 735
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 736
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->likeAnimStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 739
    :cond_e
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->playModelIbId:I

    if-ne p1, v0, :cond_f

    .line 740
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->checkController()V

    .line 741
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_11

    .line 742
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "changePlayMode"

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 744
    :cond_f
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->lrcFullViewId:I

    if-ne p1, v0, :cond_10

    .line 745
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showSmallLrc()V

    goto :goto_0

    .line 746
    :cond_10
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->soundQuality:I

    if-ne p1, v0, :cond_11

    .line 748
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSoundQualityList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 749
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSoundQualityList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_11

    .line 750
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showSoundQualityList()V

    :cond_11
    :goto_0
    return-void
.end method

.method public synthetic lambda$showBusinessOther$168$MusicPlayerView()V
    .locals 3

    .line 834
    new-instance v0, Landroid/content/Intent;

    const-string v1, "genie://com.alibaba.ailabs.genie.musicplayer.tme/page/tme_main"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 835
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 836
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showBusinessOther$169$MusicPlayerView(Landroid/view/View;)V
    .locals 4

    .line 854
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz p1, :cond_0

    .line 855
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebapp(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;I)V

    .line 856
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_account:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_account:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    const-string v3, "vip_buy"

    invoke-direct {p1, v0, v1, v3, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 860
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportClickEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showSoundQualityList$167$MusicPlayerView(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;)V
    .locals 0

    .line 760
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->changeSoundQuality(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public loadLrcEntryList(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;)V
    .locals 2

    .line 320
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->loadLrcEntryList(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;)V

    if-eqz p1, :cond_3

    .line 321
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->getSongId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->getCurrentLrcRows()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcList:Ljava/util/List;

    .line 325
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->getCurrentLrcRows()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->loadLrcEntryList(Ljava/util/List;)V

    .line 327
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcViewFull:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->getCurrentLrcRows()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->loadLrcEntryList(Ljava/util/List;)V

    .line 328
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-nez p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcViewFull:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setVisibility(I)V

    .line 330
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->noLrcTvFull:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->writerTvId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->writerFromLine:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setVisibility(I)V

    .line 335
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcMengIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcTxtId:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->textWriterId:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->writeFromId:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->noLrcNotice:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 342
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showNoLrc()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 0

    .line 876
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->onActionDown(Landroid/view/MotionEvent;)V

    .line 877
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->resetTimer()V

    return-void
.end method

.method public onActionUp(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 883
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->onActionUp(Landroid/view/MotionEvent;)V

    .line 884
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->resetTimer()V

    .line 885
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mSeekBarIsTouching:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 886
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mSeekBarIsTouching:Z

    const-string p1, "MusicPlayerView"

    const-string v0, "onActionUp"

    .line 887
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    const-string v0, "children_song"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 889
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small_child:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 891
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 893
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 894
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->albumIvId:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 895
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->timeRyId:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public refreshData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 11

    .line 419
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    const/4 v0, 0x0

    .line 420
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcList:Ljava/util/List;

    .line 421
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->reset()V

    .line 422
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcViewFull:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->reset()V

    const-wide/16 v0, 0x0

    .line 423
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mDuration:J

    .line 424
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    .line 425
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->titleTvId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->artistTvId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSoundQuality()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/logger/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->soundQuality:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->soundQuality:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->soundQuality:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSoundQuality()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isVip()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->songVipStatus:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->songVipStatus:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->setImgTagLyVisible()V

    .line 440
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 443
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 444
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 445
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->subTitleId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 447
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->checkData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 450
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 451
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    :goto_3
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getChargeTips()Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 459
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->payTips:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->payTips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 462
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->payTips:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    :goto_4
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 466
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_6

    .line 467
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->getLarge()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 469
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->getImg()Ljava/lang/String;

    move-result-object v1

    .line 471
    :cond_5
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->albumIvId:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 473
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->albumIvId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->loadAlbum(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;Landroid/widget/ImageView;)V

    .line 475
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBackgroundImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 476
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->fullViewBgId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 477
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 478
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBackgroundImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 481
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSourceLogo()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_9

    .line 483
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLogoOption:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v1, :cond_8

    .line 484
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 485
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLogoOption:Lcom/bumptech/glide/request/RequestOptions;

    .line 487
    :cond_8
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLogoOption:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->sourceIvId:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 489
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPlayMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->convertPlayModel(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->refreshPlayModel(I)V

    .line 491
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getLyricUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 492
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 493
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->noLrcTvFull:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->writerTvId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->writerFromLine:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 497
    :cond_a
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcTxtId:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->noLrcNotice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->textWriterId:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->writeFromId:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    :goto_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    if-eqz v0, :cond_c

    .line 503
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getLyricUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->requestLrc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 506
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->showNoLrc()V

    .line 508
    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->sourceFrom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 509
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->song_vip_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 510
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->fullPayTips:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 511
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v5, v5, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v6, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->fullBuyId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x4

    .line 513
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    iget-object v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 516
    iget-object v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->getBrandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 517
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 518
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    iget-object v8, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    sget v9, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->source_from:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isVip()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 521
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 523
    :cond_d
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    :goto_7
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method public refreshLike(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 592
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshLike(Z)V

    const-string v0, "children_song"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 594
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 595
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_like_child:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 596
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLike:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_like_child:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 598
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_like:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 599
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLike:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_like_full:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 602
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 603
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_unlike_child:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 604
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLike:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_unlike_child:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 606
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_unlike:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 607
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLike:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_unlike_full:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public refreshPlayModel(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 615
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshPlayModel(I)V

    .line 616
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    const-string v2, "story"

    const-string v3, "children_song"

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    .line 640
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 643
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_normal:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 641
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_normal_child:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 633
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 636
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_loop:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 634
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_loop_child:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 626
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    .line 629
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_random:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 627
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_random_child:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 619
    :cond_9
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    .line 622
    :cond_a
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_order:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 620
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playModelIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_odrer_child:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    return-void
.end method

.method public refreshPlayState(I)V
    .locals 3

    .line 666
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshPlayState(I)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerView"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    if-nez v0, :cond_0

    const-string p1, "mView is null, return"

    .line 669
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, "story"

    const-string v2, "children_song"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_2

    .line 681
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 684
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 682
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_play_child:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 674
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 677
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 675
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_pause_child:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public resetTimer()V
    .locals 1

    const/4 v0, 0x0

    .line 814
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->timer:I

    return-void
.end method

.method protected showBusinessOther(I)V
    .locals 11

    .line 819
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->fullPayTips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 820
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->fullBuyId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 821
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->sourceFrom:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 822
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->song_vip_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x4

    if-eqz p1, :cond_4

    .line 823
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz p1, :cond_4

    .line 825
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->buyBackground:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 828
    :goto_0
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, -0x1

    if-ge p1, v6, :cond_2

    .line 829
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;

    .line 830
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getBusinessType()I

    move-result v8

    if-ne v8, v4, :cond_0

    .line 831
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    move-result-object v8

    .line 832
    iget-object v9, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$8w-LoWheFvumZxPFUvl-L5hqVU0;

    invoke-direct {v10, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$8w-LoWheFvumZxPFUvl-L5hqVU0;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->activateRightDialog(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V

    .line 841
    :cond_0
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getBusinessType()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_1
    if-eq p1, v7, :cond_3

    .line 848
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    .line 849
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 850
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 851
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$Q0cF5v6DN_lyONOBjrhBblzTBrg;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$Q0cF5v6DN_lyONOBjrhBblzTBrg;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 864
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 865
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 868
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->buyBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 869
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 870
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public showFindMoreIcon(Z)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->showFindMoreIcon(Z)V

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateDuration(J)V
    .locals 1

    .line 378
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->updateDuration(J)V

    .line 379
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mDuration:J

    .line 380
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public updateExtra(Landroid/os/Bundle;)V
    .locals 4

    .line 385
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->updateExtra(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "isFavorite"

    .line 389
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 390
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->refreshLike(Z)V

    const-string v1, ""

    const-string v2, "playModel"

    .line 392
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/logger/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 394
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->convertPlayModel(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->refreshPlayModel(I)V

    :cond_1
    const-string v2, "toast"

    .line 397
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/logger/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 399
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->showToastView(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    const-string v2, "soundQuality"

    .line 402
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 403
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 404
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->soundQuality:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->soundQuality:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 407
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSoundQuality()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 408
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->soundQuality:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 410
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->soundQuality:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->soundQuality:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSoundQuality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->setImgTagLyVisible()V

    return-void
.end method

.method public updateTime(JJ)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 350
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->updateTime(JJ)V

    .line 351
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->updateTime(JJ)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcViewFull:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mLrcViewFull:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->updateTime(JJ)V

    .line 355
    :cond_0
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    long-to-int p4, p1

    invoke-virtual {p3, p4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 357
    iget-wide p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mDuration:J

    long-to-float p3, p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float p3, p3, p4

    .line 358
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_1

    long-to-float p4, p1

    div-float/2addr p4, p3

    .line 359
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->albumIvId:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p4, p4, p3

    .line 360
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTranslationX(F)V

    :cond_1
    cmp-long p3, p1, v2

    if-lez p3, :cond_4

    const-wide/16 p3, 0x2710

    const/16 v0, 0x8

    cmp-long v1, p1, p3

    if-lez v1, :cond_2

    .line 364
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 366
    :cond_2
    iget-boolean p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mSeekBarIsTouching:Z

    if-eqz p3, :cond_3

    .line 367
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 369
    :cond_3
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    :goto_0
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method
