.class Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$7;
.super Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener$Stub;
.source "MessageCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$7;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$7;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$200(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->getUserVisibleHint()Z

    move-result v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " type=="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "   payload==="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageCenterActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$7;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$200(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->getUserVisibleHint()Z

    move-result p1

    if-nez p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$7;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$800(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->loadDataFromNet()V

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$7;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$800(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getCountUnread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
