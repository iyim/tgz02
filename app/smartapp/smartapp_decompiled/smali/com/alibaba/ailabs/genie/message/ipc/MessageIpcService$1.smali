.class Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$1;
.super Ljava/lang/Object;
.source "MessageIpcService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->countUnread(Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V
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

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$1;->this$0:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$1;->val$callback:Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 49
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    if-eqz p3, :cond_0

    :try_start_0
    const-string v0, "MessageUnReadNumber"

    .line 52
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$1;->this$0:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->access$000(Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p3}, Lcom/alibaba/ailabs/genie/message/utils/MessageBroadCastUtils;->sendMessageCenterBroadCast(Landroid/content/Context;I)V

    const-string p3, "model"

    const-string/jumbo v0, "result"

    .line 54
    invoke-virtual {p2, p3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$1;->val$callback:Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;->callback(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$1;->onResult(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
