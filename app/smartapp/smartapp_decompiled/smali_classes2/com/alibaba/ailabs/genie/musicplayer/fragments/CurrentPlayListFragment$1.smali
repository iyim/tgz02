.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$1;
.super Ljava/lang/Object;
.source "CurrentPlayListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    .line 191
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPageNum()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 194
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->requestData(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;ILjava/lang/String;)V

    return-void
.end method

.method public onRefresh()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    .line 176
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPageNum()I

    move-result v1

    :cond_0
    const/4 v0, 0x2

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->requestData(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;ILjava/lang/String;)V

    return-void
.end method
