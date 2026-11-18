.class Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;
.super Ljava/lang/Object;
.source "MessageCenterActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->readAllMessages()V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 285
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$800(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getCountUnread()V

    .line 289
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    new-instance p2, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "readAllMessages ---> onResult: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public bridge synthetic onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 280
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;->onResult(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
