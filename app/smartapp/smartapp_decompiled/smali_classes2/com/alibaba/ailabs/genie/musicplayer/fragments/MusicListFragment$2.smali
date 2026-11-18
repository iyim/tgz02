.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$2;
.super Ljava/lang/Object;
.source "MusicListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$OnItemClickListener;


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

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 5

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicListFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 119
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    .line 120
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->isCollected()Z

    move-result v1

    .line 121
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;-><init>()V

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mItemType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getRawId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;->remove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setCollected(Z)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mItemType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getRawId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setCollected(Z)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->notifyDataSetChanged(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;I)V

    :cond_1
    return-void
.end method
