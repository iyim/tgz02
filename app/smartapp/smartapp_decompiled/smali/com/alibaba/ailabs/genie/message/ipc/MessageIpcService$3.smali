.class Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$3;
.super Ljava/lang/Object;
.source "MessageIpcService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->getCountUnread(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;Landroid/content/Context;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$3;->this$0:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 166
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageUnReadNumber"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$3;->val$context:Landroid/content/Context;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/message/utils/MessageBroadCastUtils;->sendMessageCenterBroadCast(Landroid/content/Context;I)V

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCountUnread ---> onResult: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageIpcService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public bridge synthetic onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 161
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$3;->onResult(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
