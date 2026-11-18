.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$4;
.super Ljava/lang/Object;
.source "MusicListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 174
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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

    .line 181
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getItem(I)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object p2

    const-string p4, "MusicListFragment"

    if-nez p2, :cond_1

    const-string p1, "mLoadListView,onItemClick, mediaMetadataCompat is null, return"

    .line 183
    invoke-static {p4, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getCopyright()Ljava/lang/String;

    move-result-object p5

    const-string v0, "1"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    return-void

    .line 189
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "====== position = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",  index = "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mItemType:Ljava/lang/String;

    iget-object p4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    iget-object p4, p4, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-virtual {p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->createList(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;)V

    .line 191
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 192
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_3
    return-void
.end method
