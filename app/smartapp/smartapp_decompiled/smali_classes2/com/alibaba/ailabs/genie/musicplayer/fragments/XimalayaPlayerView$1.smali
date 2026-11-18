.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;
.super Ljava/lang/Object;
.source "XimalayaPlayerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 377
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    const-string v1, "story"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_2

    .line 378
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCanPlay()Z

    move-result p1

    if-nez p1, :cond_0

    return v3

    .line 381
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$002(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;Z)Z

    .line 382
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->isTouchInThumb(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 383
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 384
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_big_child:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 386
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_big:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 388
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 389
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->albumIvId:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->album_fg:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->timeRyId:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 392
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 393
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$002(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;Z)Z

    .line 394
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 395
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 396
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small_child:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 398
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 400
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 401
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->albumIvId:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->timeRyId:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_2
    return v3
.end method
