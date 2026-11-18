.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;
.super Ljava/lang/Object;
.source "MusicPlayerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 976
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCanPlay()Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 979
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/high16 v1, 0x41200000    # 10.0f

    const-string v2, "children_song"

    const-string v3, "MusicPlayerView"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_3

    .line 980
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/ClickUtils;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 983
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1, v4}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$902(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;Z)Z

    const-string p1, "onTouch---ACTION_DOWN"

    .line 984
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->isTouchInThumb(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 986
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 987
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_big_child:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 989
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_big:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 991
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 992
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->albumIvId:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->album_fg:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 993
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->timeRyId:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 995
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_5

    const-string p1, "onTouch---ACTION_UP"

    .line 996
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$902(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;Z)Z

    .line 998
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 999
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small_child:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1001
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->thumb_small:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1003
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->seekBarId:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 1004
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->albumIvId:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1005
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$6;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->timeRyId:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_5
    :goto_2
    return v0
.end method
