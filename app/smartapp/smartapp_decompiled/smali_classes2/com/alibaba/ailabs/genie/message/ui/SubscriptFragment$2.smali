.class Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;
.super Ljava/lang/Object;
.source "SubscriptFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->loadDataFromNet()V
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
        "Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->onResult(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onResult(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;

    invoke-direct {p2, p0, p3}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$2;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
