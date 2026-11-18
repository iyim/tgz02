.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$2;
.super Ljava/lang/Object;
.source "MusicPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 194
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->like_anim:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$302(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 201
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 202
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$400(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xaf0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
