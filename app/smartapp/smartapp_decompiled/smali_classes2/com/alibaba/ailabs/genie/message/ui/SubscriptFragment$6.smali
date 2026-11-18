.class Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$6;
.super Ljava/lang/Object;
.source "SubscriptFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->updateSwitch(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 313
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$1300(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 316
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 317
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$000(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V

    .line 318
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateSwitch-->onResult: result=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$300()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 310
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$6;->onResult(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
