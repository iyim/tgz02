.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;
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

    .line 221
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

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

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "position:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CurrentPlayListFragment"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->clearData()V

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setClickPos(I)V

    .line 229
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    add-int/lit8 p3, p3, 0x1

    iget-object p4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object p4, p4, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mItemType:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->requestData(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;ILjava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/GridView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$400(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_select_ji_down:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
