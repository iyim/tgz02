.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "TMESongListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

.field final synthetic val$layoutManage:Landroid/support/v7/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$1;->val$layoutManage:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .line 129
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$1;->val$layoutManage:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    add-int/lit8 p1, p1, 0x4

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->access$400(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)V

    :cond_1
    return-void
.end method
