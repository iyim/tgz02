.class Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;
.super Ljava/lang/Object;
.source "SubscriptFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->unSubscribeNet(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/message/network/IMessageCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 283
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$1100()I

    move-result p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->dismiss(I)V

    .line 284
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 286
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5$1;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;Ljava/lang/Boolean;)V

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 298
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$000(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V

    .line 299
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unSubscribeNet\uff1a code="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "    result="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onResult"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 280
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;->onResult(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
