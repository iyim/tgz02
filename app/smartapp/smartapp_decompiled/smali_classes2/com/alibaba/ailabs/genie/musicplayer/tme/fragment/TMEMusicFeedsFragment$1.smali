.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "TMEMusicFeedsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->loadNextPageRankData(I)V

    :cond_0
    return-void
.end method
