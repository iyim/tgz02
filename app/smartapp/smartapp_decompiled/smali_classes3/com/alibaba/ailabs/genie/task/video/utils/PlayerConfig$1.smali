.class final Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;
.super Ljava/util/HashSet;
.source "PlayerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "com.youku.tv.detail.activity.DetailActivity"

    .line 13
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.youku.tv.playerFullscreen.PlayerActivity"

    .line 14
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.youku.tv.home.activity.YkottHomeActivity"

    .line 15
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.yunos.tv.yingshi.boutique.bundle.detail.activity.YingshiDetailActivity"

    .line 16
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.mgtv.tv.vod.activity.VodDynamicActivity"

    .line 17
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.mgtv.tv.jump.view.IntentParseActivity"

    .line 18
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.qiyi.video.speaker.activity.PlayerActivity"

    .line 19
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.qiyi.video.speaker.activity.WelcomeActivity"

    .line 20
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.qqliveaudiobox.videodetail.view.VideoDetailActivity"

    .line 21
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.qqliveaudiobox.uicomponent.activity.ActionActivity"

    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.xiaodianshi.tv.yst.ui.bangumi.BangumiDetailActivity"

    .line 23
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.xiaodianshi.tv.yst.ui.transition.TransitionActivity"

    .line 24
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
