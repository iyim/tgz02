.class public Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;
.super Lcom/alibaba/ailabs/appbox/activity/BaseActivity;
.source "MarketVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG_PATH_EXT:Ljava/lang/String; = "videopath"


# instance fields
.field mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 56
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_back:I

    if-ne p1, v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->finish()V

    goto :goto_0

    .line 58
    :cond_0
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_home:I

    if-ne p1, v0, :cond_1

    .line 59
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->goHome(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "videopath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 40
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->activity_video:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->setContentView(I)V

    .line 41
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->video_player:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->mVideoView:Landroid/widget/VideoView;

    .line 43
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_home:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onDestroy()V

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onPause()V

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketVideoActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    return-void
.end method
