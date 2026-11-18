.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;
.super Ljava/lang/Object;
.source "MusicListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    .line 164
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result v0

    .line 166
    div-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x1

    .line 167
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->requestData(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    .line 145
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result v0

    .line 146
    div-int/lit8 v0, v0, 0x1e

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->requestData(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;ILjava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onLoadComplete()V

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onRefreshComplete(Z)V

    .line 154
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
