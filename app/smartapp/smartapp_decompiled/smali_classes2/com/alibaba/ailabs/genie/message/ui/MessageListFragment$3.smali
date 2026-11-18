.class Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getCountUnread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/message/network/IMessageCallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 227
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$102(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;I)I

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$102(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;I)I

    .line 232
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$500(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 233
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$500(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 244
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCountUnread ---> onResult: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 222
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;->onResult(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
