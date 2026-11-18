.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
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
.field fromPosition:I

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

.field toPosition:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V
    .locals 0

    .line 1145
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1231
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1232
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1233
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1234
    iget p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->fromPosition:I

    const-string p2, "ItemTouchHelper"

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    iget p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->toPosition:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "onSwiped--> clearView . refreshOnlySetData"

    .line 1238
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->refreshOnlySetData(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "onSwiped--> clearView . refreshData"

    .line 1235
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->refreshData(Ljava/util/List;Z)V

    .line 1243
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1244
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1246
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo p2, "swipe_icon"

    const-string v0, "app_list_"

    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 1155
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroid/support/v7/widget/GridLayoutManager;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    .line 1159
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x3

    .line 1163
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1173
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->fromPosition:I

    .line 1175
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->toPosition:I

    .line 1176
    iget p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->fromPosition:I

    iget p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->toPosition:I

    if-ge p1, p2, :cond_0

    .line 1177
    :goto_0
    iget p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->toPosition:I

    if-ge p1, p2, :cond_1

    .line 1178
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    add-int/lit8 p3, p1, 0x1

    invoke-static {p2, p1, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move p1, p3

    goto :goto_0

    .line 1182
    :cond_0
    :goto_1
    iget p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->toPosition:I

    if-le p1, p2, :cond_1

    .line 1183
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    add-int/lit8 p3, p1, -0x1

    invoke-static {p2, p1, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 1187
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    move-result-object p1

    iget p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->fromPosition:I

    iget p3, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->toPosition:I

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->notifyItemMoved(II)V

    .line 1188
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->refreshOnlySetData(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1221
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
