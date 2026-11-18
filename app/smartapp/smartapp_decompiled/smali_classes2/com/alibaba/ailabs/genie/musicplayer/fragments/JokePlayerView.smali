.class public Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;
.source "JokePlayerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JokePlayerView"


# instance fields
.field private listener:Landroid/view/View$OnClickListener;

.field private mBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

.field private mPlayBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$JokePlayerView$gYG-S8Cai14bFoAlsIbiu2QCjLo;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$JokePlayerView$gYG-S8Cai14bFoAlsIbiu2QCjLo;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->listener:Landroid/view/View$OnClickListener;

    .line 27
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    .line 28
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;->controlLyId:Landroid/widget/RelativeLayout;

    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->joke_play:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mPlayBtn:Landroid/widget/ImageButton;

    .line 29
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;->controlLyId:Landroid/widget/RelativeLayout;

    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->joke_last:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;->controlLyId:Landroid/widget/RelativeLayout;

    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->joke_next:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mPlayBtn:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;->mediaBackId:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mBackCkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;->unbind()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->finish()V

    return-void
.end method

.method public getBinding()Landroid/databinding/ViewDataBinding;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

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

.method public synthetic lambda$new$170$JokePlayerView(Landroid/view/View;)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 87
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->joke_last:I

    if-ne p1, v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->previous()V

    goto :goto_0

    .line 89
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->joke_next:I

    if-ne p1, v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->next()V

    goto :goto_0

    .line 91
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->joke_play:I

    if-ne p1, v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->playOrPause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public refreshData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 38
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_joke_album_bg:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;->jokeAlbum:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public refreshPlayState(I)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshPlayState(I)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JokePlayerView"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    if-nez v0, :cond_0

    const-string p1, "mView is null, return"

    .line 70
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mPlayBtn:Landroid/widget/ImageButton;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;->mPlayBtn:Landroid/widget/ImageButton;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
