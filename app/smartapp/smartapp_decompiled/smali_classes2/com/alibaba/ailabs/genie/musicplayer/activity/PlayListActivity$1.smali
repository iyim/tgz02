.class Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$1;
.super Ljava/lang/Object;
.source "PlayListActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageScrolled, position:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlayListActivity"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->access$002(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;I)I

    .line 207
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->notifyDataSetChanged()V

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected, position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayListActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;

    .line 212
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onSelected()V

    return-void
.end method
