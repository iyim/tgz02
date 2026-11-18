.class Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;
.super Ljava/lang/Object;
.source "MICRpcServiceBiz.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannelCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)V
    .locals 1

    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$000(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 171
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RpcProxy return the Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    .line 172
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RpcProxy rpcResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    const-class v2, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-static {v1, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$202(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$000(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 176
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to parse the RpcProxy Result!"

    invoke-static {v1, v2, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :try_start_3
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$000(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 180
    :goto_1
    monitor-exit v0

    return-void

    .line 178
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$000(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw p1

    :catchall_1
    move-exception p1

    .line 180
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
