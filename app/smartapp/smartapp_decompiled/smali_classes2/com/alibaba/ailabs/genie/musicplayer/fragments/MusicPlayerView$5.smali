.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$5;
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

    .line 951
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 954
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    if-eqz v0, :cond_2

    .line 955
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 956
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playerViewId:Landroid/support/constraint/ConstraintLayout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$702(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;I)I

    goto :goto_0

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->resetTimer()V

    .line 964
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    .line 965
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V

    :cond_2
    return-void
.end method
