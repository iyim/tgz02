.class Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient$1;
.super Ljava/lang/Object;
.source "DefaultRpcClient.java"

# interfaces
.implements Lcom/alipay/vi/android/phone/mrpc/core/Config;


# instance fields
.field final synthetic this$0:Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;

.field final synthetic val$rpcParams:Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;


# direct methods
.method constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient$1;->this$0:Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;

    iput-object p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient$1;->val$rpcParams:Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient$1;->this$0:Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;

    invoke-static {v0}, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;->access$000(Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getRpcParams()Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient$1;->val$rpcParams:Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;

    return-object v0
.end method

.method public getTransport()Lcom/alipay/vi/android/phone/mrpc/core/Transport;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient$1;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient$1;->val$rpcParams:Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->getGwUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGzip()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient$1;->val$rpcParams:Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->isGzip()Z

    move-result v0

    return v0
.end method

.method public sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method
