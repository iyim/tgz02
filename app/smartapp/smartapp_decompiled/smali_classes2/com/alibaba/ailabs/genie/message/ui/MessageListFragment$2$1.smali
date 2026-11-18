.class Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->onResult(ILjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

.field final synthetic val$msgCode:Ljava/lang/String;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->val$msgCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->val$msgCode:Ljava/lang/String;

    const-string v1, "50001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "\u4eb2\u4eb2\uff0c\u5386\u53f2\u6d88\u606f\u67e5\u770b\u4e0a\u965010000\u6761\u54e6\uff5e"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$000(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x3

    mul-int/lit8 v0, v0, 0x3

    const/16 v4, 0x3e8

    if-le v0, v4, :cond_3

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "\u4eb2\u4eb2\uff0c\u5386\u53f2\u6d88\u606f\u67e5\u770b\u4e0a\u96501000\u6761\u54e6\uff5e\u4e0b\u6b21\u672a\u8bfb\u6d88\u606f\u8bf7\u8d76\u65e9\u67e5\u770b"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserVisibleHint()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v5, v5, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getUserVisibleHint()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  MESSAGE_LIST_MAX_NUM="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   mPageNum*PAGE_SIZE="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$000(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "X"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$600(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    return-void

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$600(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$000(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I

    move-result v0

    const/16 v4, 0x8

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->val$result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$700(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$600(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$600(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishRefresh()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->val$result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_4

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$600(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    goto/16 :goto_0

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$600(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    goto/16 :goto_0

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$000(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I

    move-result v0

    if-lez v0, :cond_7

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$700(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$600(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->val$result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$600(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishLoadMore()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    goto :goto_0

    .line 181
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$600(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishLoadMoreWithNoMoreData()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    goto :goto_0

    .line 184
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$800(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v3, Lcom/alibaba/ailabs/genie/message/R$string;->tv_message_empty_content:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$900(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$500(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object v3

    sget v5, Lcom/alibaba/ailabs/genie/message/R$mipmap;->image_message_content_empty:I

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$700(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$600(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setVisibility(I)V

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$1000(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->val$result:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$000(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I

    move-result v4

    if-nez v4, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-virtual {v0, v3, v1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->setData(Ljava/util/List;Z)V

    return-void
.end method
