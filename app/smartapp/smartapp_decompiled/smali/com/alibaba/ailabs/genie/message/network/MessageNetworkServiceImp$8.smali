.class Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$8;
.super Ljava/lang/Object;
.source "MessageNetworkServiceImp.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->unSubscribe(JLcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private modelData:Ljava/lang/Boolean;

.field private msgCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$8;->this$0:Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$8;->val$callback:Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseCallback(IILjava/lang/String;)V
    .locals 1

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  code---->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "unSubscribe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$8;->this$0:Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;

    invoke-static {p1, p3}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->access$000(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p3, "model"

    .line 342
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$8;->modelData:Ljava/lang/Boolean;

    const-string p3, "msgCode"

    .line 343
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$8;->msgCode:Ljava/lang/String;

    .line 345
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "result---->"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Unsubscribe"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$8;->val$callback:Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$8;->msgCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$8;->modelData:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p3, v0}, Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
