.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$1;
.super Ljava/lang/Object;
.source "MusicListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->clearData()V

    .line 100
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mItemType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->clearHistory(Ljava/lang/String;)V

    return-void
.end method
