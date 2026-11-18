.class Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;
.super Ljava/lang/Object;
.source "SubscriptFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->subscribeNet(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
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

.field final synthetic val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;->val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 5

    .line 207
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$1100()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->dismiss(I)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    .line 210
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "code=="

    if-nez v0, :cond_7

    .line 211
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    .line 213
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4$1;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;Ljava/lang/Boolean;)V

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x194

    const-string v2, "    msgCodeNum==="

    const-string v3, "subscribeNet"

    if-ne p2, v0, :cond_1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u4eb2\uff0c\u60a8\u8ba2\u9605\u7684\u4e1a\u52a1\u4e0d\u5b58\u5728"

    goto :goto_0

    :cond_1
    const-string v0, "\u8ba2\u9605\u51fa\u73b0\u9519\u8bef"

    :goto_0
    const/16 v4, 0x64

    if-ne p2, v4, :cond_2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u4eb2\uff0c\u60a8\u5df2\u7ecf\u8ba2\u9605"

    :cond_2
    const/16 v4, 0x65

    if-ne p2, v4, :cond_3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u4eb2\uff0c\u60a8\u8fd8\u672a\u8ba2\u9605"

    :cond_3
    const/16 v4, 0x67

    if-ne p2, v4, :cond_4

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u4eb2\uff0c\u4e3a\u4e86\u4f60\u7684\u9690\u79c1\u5b89\u5168\u4fdd\u969c\uff0c\u652f\u4ed8\u5b9d\u76f8\u5173\u8ba2\u9605\u5f97\u5148\u6253\u5f00\u5929\u732b\u7cbe\u7075App\u5b8c\u6210\u76f8\u5173\u6388\u6743\u6d41\u7a0b"

    :cond_4
    const/16 v4, 0x66

    if-ne p2, v4, :cond_5

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u4eb2\uff0c\u8fd8\u672a\u53d1\u73b0\u8ba2\u9605\u9879"

    .line 257
    :cond_5
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    .line 260
    :cond_6
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object p2

    new-instance v2, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 268
    :cond_7
    :goto_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$300()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeNet\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$000(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V

    :cond_8
    return-void
.end method

.method public bridge synthetic onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 204
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;->onResult(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
