.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$5;
.super Ljava/lang/Object;
.source "MusicListFragment.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 216
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$5;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->showLoading(Z)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onLoadComplete()V

    .line 221
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onRefreshComplete(Z)V

    if-eqz p1, :cond_0

    .line 222
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mItemType:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
