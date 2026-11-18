.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$3;
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

    .line 208
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$302(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    :cond_0
    return-void
.end method
