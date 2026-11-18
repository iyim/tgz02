.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView$1;
.super Ljava/lang/Object;
.source "RadioPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->likeOrUnlike()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;)Lpl/droidsonroids/gif/GifDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->stop()V

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->likeGifIv:Lpl/droidsonroids/gif/GifImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCollect()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;->refreshLike(Z)V

    return-void
.end method
