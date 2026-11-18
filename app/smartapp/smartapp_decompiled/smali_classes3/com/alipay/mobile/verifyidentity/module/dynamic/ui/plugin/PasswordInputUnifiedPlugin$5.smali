.class Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;
.super Ljava/lang/Object;
.source "PasswordInputUnifiedPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

.field final synthetic val$pwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->val$pwd:Ljava/lang/String;

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
.method public run()V
    .locals 6

    const-string v0, "PAYMENT_PASSWORD_PLUS"

    const/4 v1, 0x0

    .line 176
    :try_start_0
    new-instance v2, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;

    invoke-direct {v2}, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;-><init>()V

    .line 177
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v3}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$600(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    .line 178
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v3}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$700(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    .line 179
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v3}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$800(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    const-string v3, "VERIFY_PPW"

    .line 180
    iput-object v3, v2, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->action:Ljava/lang/String;

    .line 181
    new-instance v3, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyRequestModel;

    invoke-direct {v3}, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyRequestModel;-><init>()V

    .line 182
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v4}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$900(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    iget-boolean v5, v5, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isSimplePwd:Z

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyRequestModel;->setIsSimplePPW(Ljava/lang/String;Z)V

    .line 183
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->val$pwd:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyRequestModel;->encryptPwd:Ljava/lang/String;

    .line 184
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v4}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$1000(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->sourceToPwd:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "This pwd check request is from fingerprint module."

    invoke-static {v4, v5}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v4}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$1000(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->predata:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyRequestModel;->predata:Ljava/util/Map;

    .line 187
    iput-object v0, v2, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    .line 190
    :cond_0
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->data:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->sendRpcRequest(Ljava/lang/Object;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$1000(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    move-result-object v2

    iput-object v1, v2, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->predata:Ljava/lang/String;
    :try_end_1
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 197
    :catch_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$1200(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
