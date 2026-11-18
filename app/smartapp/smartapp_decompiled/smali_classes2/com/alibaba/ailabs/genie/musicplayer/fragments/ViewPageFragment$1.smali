.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$1;
.super Ljava/lang/Object;
.source "ViewPageFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->showAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 361
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->findMore:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->findMore:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->findTvId:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 365
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->findTvId:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 368
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->showFindMoreIcon(Z)V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
