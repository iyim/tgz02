.class public Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;
.source "XimalayaPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$OnSeekBarChangeImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XimalayaPlayerView"


# instance fields
.field protected mClickListener:Landroid/view/View$OnClickListener;

.field private mLogoOption:Lcom/bumptech/glide/request/RequestOptions;

.field private mSeekBarIsTouching:Z

.field private mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

.field private seekBarTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "NewApi"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "NewApi"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$XimalayaPlayerView$5Eztiv2ZvMhFADfOo6qLjxOEa6w;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$XimalayaPlayerView$5Eztiv2ZvMhFADfOo6qLjxOEa6w;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 373
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->seekBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 50
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mItemType:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    .line 52
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->preIbId:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->nextIbId:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playListIbId:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playSpeedTvId:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mBackCkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$OnSeekBarChangeImpl;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$OnSeekBarChangeImpl;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 60
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->seekBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$XimalayaPlayerView$SqE7HT37dgJIXATY7ItCP2IDsOM;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$XimalayaPlayerView$SqE7HT37dgJIXATY7ItCP2IDsOM;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mItemType:Ljava/lang/String;

    const-string p2, "story"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->showChildView()V

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->showAdult()V

    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mSeekBarIsTouching:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    return-object p0
.end method

.method private showAdult()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->preIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_previous:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 355
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_pause:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->nextIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_next:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_unlike:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playListIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_play_list:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_thumb:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 361
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_more_more:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_progress:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 364
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_back_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->ripple_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 367
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    const v2, 0x42133333    # 36.8f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 368
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 369
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 370
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

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

    .line 331
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->preIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_previous_child:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_pause_child:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->nextIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_next_child:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_unlike_child:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playListIbId:Landroid/widget/ImageButton;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_play_list_child:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_thumb_child:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small_child:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_more_more_child:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_progress_child:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 342
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_back_bg_child:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->mediaBackId:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 345
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42f40000    # 122.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 346
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 347
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 348
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->unbind()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    .line 80
    :cond_0
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->finish()V

    return-void
.end method

.method public getBinding()Landroid/databinding/ViewDataBinding;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    return-object v0
.end method

.method public getBusinessBtnRy()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->businessBtnRy:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public synthetic lambda$new$171$XimalayaPlayerView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$new$172$XimalayaPlayerView(Landroid/view/View;)V
    .locals 2

    .line 217
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 221
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->preIbId:I

    if-ne p1, v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->previous()V

    goto :goto_0

    .line 223
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->nextIbId:I

    if-ne p1, v0, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->next()V

    goto :goto_0

    .line 225
    :cond_2
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->playIbIv:I

    if-ne p1, v0, :cond_3

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->playOrPause()V

    goto :goto_0

    .line 227
    :cond_3
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->playListIbId:I

    if-ne p1, v0, :cond_4

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->openPlayList()V

    goto :goto_0

    .line 229
    :cond_4
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->likeIbId:I

    if-ne p1, v0, :cond_6

    .line 230
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCollect()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->unlike()V

    goto :goto_0

    .line 233
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->like()V

    goto :goto_0

    .line 235
    :cond_6
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->playSpeedTvId:I

    if-ne p1, v0, :cond_7

    .line 236
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    const-class v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSpeedValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "speed"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onActionUp(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 264
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->onActionUp(Landroid/view/MotionEvent;)V

    .line 265
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mSeekBarIsTouching:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 266
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mSeekBarIsTouching:Z

    .line 267
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mItemType:Ljava/lang/String;

    const-string v0, "story"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small_child:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 273
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->albumIvId:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->timeRyId:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onProgressChanged(I)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playedTimeTvId:Landroid/widget/TextView;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->totalTimeTvId:Landroid/widget/TextView;

    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mDuration:J

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public refreshData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 8

    .line 110
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->titleTvId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->artistTvId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->subTitleTvId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mItemType:Ljava/lang/String;

    const-string v5, "story"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->subTitleTvId:Landroid/widget/TextView;

    const-string v6, "#6A95EB"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->subTitleTvId:Landroid/widget/TextView;

    const-string v6, "#FE2161"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->getImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v6, v6, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->albumIvId:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSourceLogo()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 129
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mLogoOption:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v6, :cond_2

    .line 130
    new-instance v6, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v6}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v7, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 131
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mLogoOption:Lcom/bumptech/glide/request/RequestOptions;

    .line 133
    :cond_2
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mLogoOption:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v6, v6, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->sourceIvId:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 141
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->finishTvId:Landroid/widget/TextView;

    const-string v3, "\u5df2\u5b8c\u7ed3"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->finishTvId:Landroid/widget/TextView;

    const-string v3, "\u8fde\u8f7d\u4e2d..."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getTotalEpisode()I

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->totalTvId:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5171"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u96c6"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->totalTvId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    :goto_2
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->checkData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 154
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    :goto_4
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSpeedValue()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playSpeedTvId:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "X"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 163
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playSpeedTvId:Landroid/widget/TextView;

    const-string v0, "#95C0FA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 165
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playSpeedTvId:Landroid/widget/TextView;

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    :goto_5
    return-void
.end method

.method public refreshLike(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 245
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshLike(Z)V

    const-string v0, "story"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_album_liked_story:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_album_liked_main:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 254
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_album_unliked_story:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->likeIbId:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_program_unlike:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public refreshPlayState(I)V
    .locals 2

    .line 172
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshPlayState(I)V

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    if-nez v0, :cond_0

    const-string p1, "XimalayaPlayerView"

    const-string v0, "mView is null, return"

    .line 174
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, "story"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_play_child:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 180
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_pause_child:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 182
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playIbIv:Landroid/widget/ImageButton;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public showFindMoreIcon(Z)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->showFindMoreIcon(Z)V

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->moreIvId:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateDuration(J)V
    .locals 1

    .line 311
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->updateDuration(J)V

    .line 312
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public updateExtra(Landroid/os/Bundle;)V
    .locals 2

    .line 199
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->updateExtra(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "isFavorite"

    .line 203
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 204
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->refreshLike(Z)V

    const-string v0, "speedValue"

    const-string v1, ""

    .line 205
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 209
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->updateSpeed(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 211
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "XimalayaPlayerView"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSpeed(F)V
    .locals 5

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 318
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playSpeedTvId:Landroid/widget/TextView;

    const-string v1, "2X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 320
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playSpeedTvId:Landroid/widget/TextView;

    const-string v1, "1X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->playSpeedTvId:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getContentPlay()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 325
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getContentPlay()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setSpeedValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public updateTime(JJ)V
    .locals 4

    .line 286
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->updateTime(JJ)V

    .line 287
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    long-to-int p4, p1

    invoke-virtual {p3, p4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 289
    iget-wide p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mDuration:J

    long-to-float p3, p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float p3, p3, p4

    .line 290
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_0

    long-to-float p4, p1

    div-float/2addr p4, p3

    .line 291
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->albumIvId:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p4, p4, p3

    .line 292
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTranslationX(F)V

    :cond_0
    cmp-long p3, p1, v2

    if-lez p3, :cond_3

    const-wide/16 p3, 0x2710

    const/16 v0, 0x8

    cmp-long v1, p1, p3

    if-ltz v1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 299
    :cond_1
    iget-boolean p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mSeekBarIsTouching:Z

    if-eqz p3, :cond_2

    .line 300
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_2
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    :goto_0
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekTimeTvId:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method
