.class Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$2;
.super Ljava/lang/Object;
.source "MessageIpcService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->listUnreadMessage(IILcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V
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
        "Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$2;->this$0:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$2;->val$callback:Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$2;->onResult(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onResult(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    if-eqz p3, :cond_0

    const-string v0, "model"

    .line 76
    invoke-virtual {p2, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$2;->val$callback:Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;->callback(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
