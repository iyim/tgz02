.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$8;
.super Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener;
.source "ApplistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handlerAppListRecycleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1251
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$8;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/appbox/view/OnRecyclerItemClickListener;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onItemLongClick(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1262
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$8;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->getCanEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$8;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$1100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x3f866666    # 1.05f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1264
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1265
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$8;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$1200(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method
