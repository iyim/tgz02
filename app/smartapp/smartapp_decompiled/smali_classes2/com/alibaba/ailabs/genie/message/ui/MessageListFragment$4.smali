.class Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$4;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->readMessages(Ljava/util/List;)V
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

    .line 262
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 267
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    .line 268
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "readMessages ---> onResult: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->getCountUnread()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 262
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$4;->onResult(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
