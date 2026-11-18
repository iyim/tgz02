.class Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->loadDataFromNet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/message/network/IMessageCallback<",
        "Ljava/util/List<",
        "Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 138
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->onResult(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onResult(ILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDataFromNet->listAllMessages->onResult: code= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mPageNum*PAGE_SIZE= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$000(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$400(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$400(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$500(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$500(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {p1, p3}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$1100(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;Ljava/util/List;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$500(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$2;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$2;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
