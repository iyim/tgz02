.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$2;
.super Ljava/lang/Object;
.source "CurrentPlayListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 198
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    add-int/lit8 p1, p3, -0x1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 205
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "------ position = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",  index = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CurrentPlayListFragment"

    invoke-static {p3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getItem(I)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object p1

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mItemType:Ljava/lang/String;

    iget-object p4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object p4, p4, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-virtual {p2, p1, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->createList(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;)V

    .line 207
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_1
    return-void
.end method
