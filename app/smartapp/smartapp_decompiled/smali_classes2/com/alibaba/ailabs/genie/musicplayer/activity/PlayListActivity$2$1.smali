.class Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2$1;
.super Ljava/lang/Object;
.source "PlayListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;->dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;I)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;

    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->access$400(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;->playListVpId:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2$1;->val$position:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
